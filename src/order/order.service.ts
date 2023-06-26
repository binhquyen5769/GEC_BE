import { Injectable } from "@nestjs/common";
import { PrismaService } from "src/prisma/prisma.service";

// CONTROLLER XỬ LÍ LOGIC CỦA USER
@Injectable()
export class OrderService {
  constructor(private prisma: PrismaService) {}
  // GET ALL USER
  getAllOrder() {
    return this.prisma.order.findMany();
  }

  // DELETE USER BY ID
  async deleteOrderById(id: string) {
    try {
      await this.prisma.order.delete({ where: { id } });
      return "XÓA ORDER THÀNH CÔNG";
    } catch (err) {
      return "KHÔNG TÌM THẤY ID CỦA ORDER HOẶC LỖI SERVER";
    }
  }

  async getOrderByUserId(id: string) {
    try {
      return await this.prisma.order.findMany({
        where: {
          user_id: id,
        },
      });
    } catch (err) {
      console.log(err);
    }
  }

  async createOrder({ data }: any) {
    const { userInfo, item, address, phoneNumber, userName } = data;
    try {
      await this.prisma.order.create({
        data: {
          user_id: userInfo.id || "",
          orderDetail: item,
          status: "PENDING",
          infomation: { address, phoneNumber, userName },
        },
      });
    } catch (err) {
      console.log(err);
    }
  }

  // EDIT USER BY ID
  // async editOrderById(id: string, editOrderDto: EditOrderDto) {
  //   try {
  //     await this.prisma.order.update({
  //       where: { id },
  //       data: editOrderDto,
  //     });
  //     return "CHỈNH SỬA THÔNG TIN USER THÀNH CÔNG";
  //   } catch (err) {
  //     ("KHÔNG TÌM THẤY ID CỦA USER HOẶC LỖI SERVER");
  //   }
  // }

  // ADD CART USER
  // async updateCartOrder(id: string, cartOrder: []) {
  //   try {
  //     return await this.prisma.order.update({
  //       where: { id },
  //       data: {
  //         cart: cartOrder,
  //       },
  //     });
  //   } catch (err) {
  //     return `KHONG THE UPDATE THONG TIN SAN PHAM`;
  //   }
  // }

  // GET DATA CART OF USER BY ID USER
}
