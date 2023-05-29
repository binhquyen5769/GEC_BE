export declare class AuthDtoRegister {
    user_name: string;
    email: string;
    password: string;
    cart: [];
}
export declare class AuthDtoLogin {
    user_name: string;
    password: string;
}
declare const EditUserDto_base: import("@nestjs/common").Type<Partial<AuthDtoRegister>>;
export declare class EditUserDto extends EditUserDto_base {
}
export {};
