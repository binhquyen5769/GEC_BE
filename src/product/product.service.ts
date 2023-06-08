import { Injectable } from "@nestjs/common";
import { PrismaService } from "src/prisma/prisma.service";
import { ProductDto } from "./dto";

@Injectable()
export class ProductService {
  constructor(private prisma: PrismaService) {}

  // GET ALL PRODUCT
  getAllProduct() {
    return this.prisma.product.findMany();
  }

  // GET PRODUCT BY ID
  getProductById(id: number) {
    const parseId = +id;
    return this.prisma.product.findUnique({
      where: { id: parseId },
    });
  }

  // SEARCH PRODUCTS BY NAME
  searchByName(classify: string) {
    return this.prisma.product.findMany({
      where: {
        name: {
          contains: classify,
        },
      },
    });
  }

  // ADD NEW PRODUCT
  async addNewProduct(dto: ProductDto) {
    try {
      await this.prisma.product.create({
        data: {
          id: dto.id,
          name: dto.name,
          price: dto.price,
          quantity: dto.quantity,
          color: dto.color,
          description: dto.description,
          classify: dto.classify,
          image_url: dto.image_url,
          properties: dto.properties,
          user_group: dto.user_group,
        },
      });

      // RETURN TEXT
      return "THÊM SẢN PHẨM MỚI THÀNH CÔNG";
    } catch (err) {
      return "LỖI SERVER";
    }
  }
}
