import { PrismaService } from 'src/prisma/prisma.service';
import { AuthDtoLogin, AuthDtoRegister } from './dto';
import { JwtService } from '@nestjs/jwt';
import { ConfigService } from '@nestjs/config';
export declare class AuthService {
    private prisma;
    private jwt;
    private config;
    constructor(prisma: PrismaService, jwt: JwtService, config: ConfigService);
    register(dto: AuthDtoRegister): Promise<string>;
    login(dto: AuthDtoLogin): Promise<string>;
    signToken(id: string, email: string, user_name: string, createdAt: Date, admin: boolean): Promise<string>;
}
