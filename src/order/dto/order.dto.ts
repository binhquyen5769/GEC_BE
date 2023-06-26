import { IsString, IsNotEmpty, IsNumber, IsArray } from "class-validator";

export class Order {
  id: string;

  user_id: string;

  orderDetail: [];

  status: string;

  infomation: [];
}
