import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  Patch,
  Post,
} from "@nestjs/common";
import { WishListService } from "./wish-list.service";

@Controller("wish-list")
export class WishListController {
  constructor(private wishListService: WishListService) {}

  @Get("all")
  getAllWishList() {
    return this.wishListService.getAllWishList();
  }

  @Get()
  getWishListByUserId(@Body() data: any) {
    return this.wishListService.getAllWishListByUser(data);
  }

  @Post()
  createItemWishList(@Body() data: any) {
    return this.wishListService.createItemWishList(data);
  }

  @Delete()
  deleteWishListById(@Body() data: any) {
    return this.wishListService.deleteWishListById(data);
  }
}
