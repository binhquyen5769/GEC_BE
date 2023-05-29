import { ConfigService } from '@nestjs/config';
import { Strategy } from 'passport-jwt';
import { PrismaService } from '../../prisma/prisma.service';
declare const JwtStrategy_base: new (...args: any[]) => Strategy;
export declare class JwtStrategy extends JwtStrategy_base {
    private prisma;
    constructor(config: ConfigService, prisma: PrismaService);
    validate(payload: {
        id: string;
        email: string;
        user_name: string;
        createdAt: Date;
        admin: boolean;
        cart: any;
    }): Promise<import(".prisma/client").User>;
}
export {};
