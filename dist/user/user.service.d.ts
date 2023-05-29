import { EditUserDto } from 'src/auth/dto';
import { PrismaService } from 'src/prisma/prisma.service';
export declare class UserService {
    private prisma;
    constructor(prisma: PrismaService);
    getAllUser(): import(".prisma/client").PrismaPromise<import(".prisma/client").User[]>;
    deleteUserById(id: string): Promise<"XÓA USER THÀNH CÔNG" | "KHÔNG TÌM THẤY ID CỦA USER HOẶC LỖI SERVER">;
    editUserById(id: string, editUserDto: EditUserDto): Promise<string>;
    updateCartUser(id: string, cartUser: []): Promise<import(".prisma/client").User | "KHONG THE UPDATE THONG TIN SAN PHAM">;
    getDataCartUserById(id: string): Promise<import(".prisma/client").User | "LẤY DATA CART CỦA USER BẰNG ID">;
}
