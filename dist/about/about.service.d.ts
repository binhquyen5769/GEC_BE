import { PrismaService } from 'src/prisma/prisma.service';
import { AboutDto } from './dto';
export declare class AboutService {
    private prisma;
    constructor(prisma: PrismaService);
    getDataAbout(): "LỖI SERVER" | import(".prisma/client").PrismaPromise<import(".prisma/client").About[]>;
    addDataAbout(dto: AboutDto): Promise<"LỖI SERVER" | "THÊM DATA ABOUT THÀNH CÔNG">;
}
