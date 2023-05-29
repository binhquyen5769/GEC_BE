import { BannerService } from './banner.service';
import { BannerDto } from './dto';
export declare class BannerController {
    private bannerService;
    constructor(bannerService: BannerService);
    getDataBanner(): "LỖI SERVER" | import(".prisma/client").PrismaPromise<import(".prisma/client").Banner[]>;
    addDataBanner(dto: BannerDto): Promise<"LỖI SERVER" | "THÊM DATA BANNER THÀNH CÔNG">;
}
