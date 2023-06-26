import { PrismaService } from "src/prisma/prisma.service";
import { ProductDto } from "./dto";
export declare class ProductService {
    private prisma;
    constructor(prisma: PrismaService);
    getAllProduct(): import(".prisma/client").PrismaPromise<import(".prisma/client").Product[]>;
    getProductById(id: number): import(".prisma/client").Prisma.Prisma__ProductClient<import(".prisma/client").Product, never>;
    searchByName(classify: string): import(".prisma/client").PrismaPromise<import(".prisma/client").Product[]>;
    addNewProduct(dto: ProductDto): Promise<"THÊM SẢN PHẨM MỚI THÀNH CÔNG" | "LỖI SERVER">;
}
