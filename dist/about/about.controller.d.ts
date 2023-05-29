import { AboutService } from './about.service';
import { AboutDto } from './dto';
export declare class AboutController {
    private aboutService;
    constructor(aboutService: AboutService);
    getDataAbout(): "LỖI SERVER" | import(".prisma/client").PrismaPromise<import(".prisma/client").About[]>;
    addDataAbout(dto: AboutDto): Promise<"LỖI SERVER" | "THÊM DATA ABOUT THÀNH CÔNG">;
}
