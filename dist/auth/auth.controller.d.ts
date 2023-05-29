import { AuthService } from './auth.service';
import { AuthDtoLogin, AuthDtoRegister } from './dto';
export declare class AuthController {
    private authService;
    constructor(authService: AuthService);
    register(dto: AuthDtoRegister): Promise<string>;
    login(dto: AuthDtoLogin): Promise<string>;
}
