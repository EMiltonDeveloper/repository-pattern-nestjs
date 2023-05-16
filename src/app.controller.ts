import { Body, Controller, Post } from '@nestjs/common';
import { CreateTeamMemberBody } from './dtos/create-team-member-body';
import { RocketMembersRepository } from './repositories/rocket-members-repository';

@Controller('app')
export class AppController {
  constructor(private rocketMembersRepository: RocketMembersRepository) {}
  @Post('create')
  async getHello(@Body() body: CreateTeamMemberBody) {
    const { name, function: memberFuncition } = body;
    await this.rocketMembersRepository.create(name, memberFuncition);
  }
}
