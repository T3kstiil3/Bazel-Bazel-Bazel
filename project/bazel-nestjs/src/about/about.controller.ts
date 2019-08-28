import { Controller, Get } from '@nestjs/common';

@Controller('/about')
export class AboutController {
  constructor() {}

  @Get()
  getHello(): string {
    return 'about';
  }
}
