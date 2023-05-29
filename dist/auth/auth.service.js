"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.AuthService = void 0;
const common_1 = require("@nestjs/common");
const prisma_service_1 = require("../prisma/prisma.service");
const argon = require("argon2");
const runtime_1 = require("@prisma/client/runtime");
const jwt_1 = require("@nestjs/jwt");
const config_1 = require("@nestjs/config");
let AuthService = class AuthService {
    constructor(prisma, jwt, config) {
        this.prisma = prisma;
        this.jwt = jwt;
        this.config = config;
    }
    async register(dto) {
        const hashedPassword = await argon.hash(dto.password);
        try {
            await this.prisma.user.create({
                data: {
                    user_name: dto.user_name,
                    email: dto.email,
                    password: hashedPassword,
                },
            });
            return 'ĐĂNG KÍ USER MỚI THÀNH CÔNG';
        }
        catch (err) {
            if (err instanceof runtime_1.PrismaClientKnownRequestError) {
                if (err.code === 'P2002') {
                    throw new common_1.ForbiddenException('TRÙNG EMAIL HOẶC USER NAME');
                }
            }
            throw err;
        }
    }
    async login(dto) {
        const user = await this.prisma.user.findUnique({
            where: {
                user_name: dto.user_name,
            },
        });
        if (!user)
            throw new common_1.ForbiddenException('KHÔNG TÌM THẤY USER');
        const passwordMatch = await argon.verify(user.password, dto.password);
        if (!passwordMatch)
            throw new common_1.ForbiddenException('MẬT KHẨU KHÔNG ĐÚNG');
        return this.signToken(user.id, user.email, user.user_name, user.createdAt, user.admin);
    }
    async signToken(id, email, user_name, createdAt, admin) {
        const payload = {
            id,
            email,
            user_name,
            createdAt,
            admin,
        };
        const secret = this.config.get('JWT_SECRET');
        const token = await this.jwt.signAsync(payload, {
            expiresIn: '365d',
            secret: secret,
        });
        return token;
    }
};
AuthService = __decorate([
    (0, common_1.Injectable)(),
    __metadata("design:paramtypes", [prisma_service_1.PrismaService,
        jwt_1.JwtService,
        config_1.ConfigService])
], AuthService);
exports.AuthService = AuthService;
//# sourceMappingURL=auth.service.js.map