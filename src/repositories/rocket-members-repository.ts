export abstract class RocketMembersRepository {
  abstract create(name: string, memberFunciont: string): Promise<void>;
}
