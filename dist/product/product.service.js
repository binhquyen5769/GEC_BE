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
exports.ProductService = void 0;
const common_1 = require("@nestjs/common");
const prisma_service_1 = require("../prisma/prisma.service");
let ProductService = class ProductService {
    constructor(prisma) {
        this.prisma = prisma;
    }
    getAllProduct() {
        return this.prisma.product.findMany();
    }
    getProductById(id) {
        return this.prisma.product.findUnique({
            where: { id },
        });
    }
    searchByName(classify) {
        return this.prisma.product.findMany({
            where: {
                classify: {
                    contains: classify,
                },
            },
        });
    }
    async addNewProduct(dto) {
        try {
            await this.prisma.product.create({
                data: {
                    product_name: dto.product_name,
                    price: dto.price,
                    quantity: dto.quantity,
                    size: dto.size,
                    color: dto.color,
                    description: dto.description,
                    category: dto.category,
                    classify: dto.classify,
                    image_url: dto.image_url,
                    comment: dto.comment,
                    new_arrival: dto.new_arrival,
                },
            });
            return 'THÊM SẢN PHẨM MỚI THÀNH CÔNG';
        }
        catch (err) {
            return 'LỖI SERVER';
        }
    }
};
ProductService = __decorate([
    (0, common_1.Injectable)(),
    __metadata("design:paramtypes", [prisma_service_1.PrismaService])
], ProductService);
exports.ProductService = ProductService;
//# sourceMappingURL=product.service.js.map