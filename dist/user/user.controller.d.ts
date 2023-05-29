import { EditUserDto } from 'src/auth/dto';
import { UserService } from './user.service';
export declare class UserController {
    private userService;
    constructor(userService: UserService);
    getAllUser(): import(".prisma/client").PrismaPromise<import(".prisma/client").User[]>;
    getDataCartUserById(id: string): Promise<import(".prisma/client").User | "LẤY DATA CART CỦA USER BẰNG ID">;
    deleteUserById(id: string): Promise<"XÓA USER THÀNH CÔNG" | "KHÔNG TÌM THẤY ID CỦA USER HOẶC LỖI SERVER">;
    editUserById(id: string, editUserDto: EditUserDto): Promise<string>;
    updateCartUser(id: string, cartUser: any): Promise<import(".prisma/client").User | "KHONG THE UPDATE THONG TIN SAN PHAM">;
}
