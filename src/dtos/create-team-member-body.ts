import { IsNotEmpty, Length } from 'class-validator';
export class CreateTeamMemberBody {
  @IsNotEmpty({
    message: 'O nome não pode ser nulo',
  })
  @Length(5, 100)
  name: string;

  @IsNotEmpty()
  function: string;
}
