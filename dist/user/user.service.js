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
exports.UserService = void 0;
const common_1 = require("@nestjs/common");
const prisma_service_1 = require("../prisma/prisma.service");
let UserService = class UserService {
    constructor(prisma) {
        this.prisma = prisma;
    }
    getAllUser() {
        return this.prisma.user.findMany();
    }
    async deleteUserById(id) {
        try {
            await this.prisma.user.delete({ where: { id } });
            return 'XÓA USER THÀNH CÔNG';
        }
        catch (err) {
            return 'KHÔNG TÌM THẤY ID CỦA USER HOẶC LỖI SERVER';
        }
    }
    async editUserById(id, editUserDto) {
        try {
            await this.prisma.user.update({
                where: { id },
                data: editUserDto,
            });
            return 'CHỈNH SỬA THÔNG TIN USER THÀNH CÔNG';
        }
        catch (err) {
            ('KHÔNG TÌM THẤY ID CỦA USER HOẶC LỖI SERVER');
        }
    }
    async updateCartUser(id, cartUser) {
        try {
            return await this.prisma.user.update({
                where: { id },
                data: {
                    cart: cartUser,
                },
            });
        }
        catch (err) {
            return `KHONG THE UPDATE THONG TIN SAN PHAM`;
        }
    }
    async getDataCartUserById(id) {
        try {
            console.log('id: ', id);
            const user = await this.prisma.user.findUnique({
                where: { id },
            });
            delete user.id;
            delete user.email;
            delete user.user_name;
            delete user.password;
            delete user.createdAt;
            delete user.admin;
            console.log('user: ', user);
            return user;
        }
        catch (err) {
            return `LẤY DATA CART CỦA USER BẰNG ID`;
        }
    }
};
UserService = __decorate([
    (0, common_1.Injectable)(),
    __metadata("design:paramtypes", [prisma_service_1.PrismaService])
], UserService);
exports.UserService = UserService;
//# sourceMappingURL=user.service.js.map