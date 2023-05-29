import { ProductDto } from './dto';
import { ProductService } from './product.service';
export declare class ProductController {
    private productService;
    constructor(productService: ProductService);
    addNewProduct(dto: ProductDto): Promise<"THÊM SẢN PHẨM MỚI THÀNH CÔNG" | "LỖI SERVER">;
    getAllProduct(): import(".prisma/client").PrismaPromise<import(".prisma/client").Product[]>;
    searchByName(classify: string): import(".prisma/client").PrismaPromise<import(".prisma/client").Product[]>;
    getProductById(id: string): import(".prisma/client").Prisma.Prisma__ProductClient<import(".prisma/client").Product, never>;
}
