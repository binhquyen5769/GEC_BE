import { PrismaService } from 'src/prisma/prisma.service';
import { BannerDto } from './dto';
export declare class BannerService {
    private prisma;
    constructor(prisma: PrismaService);
    getDataBanner(): "LỖI SERVER" | import(".prisma/client").PrismaPromise<import(".prisma/client").Banner[]>;
    addDataBanner(dto: BannerDto): Promise<"LỖI SERVER" | "THÊM DATA BANNER THÀNH CÔNG">;
}
