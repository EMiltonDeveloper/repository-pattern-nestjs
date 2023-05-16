# masterclass-nest - By RocketSeat [https://www.youtube.com/watch?v=TRa55WbWnvQ]

## Procedimentos da aula

Inversão de dependência em:
app.module.ts

```
{
    provide: RocketMembersRepository,
    useClass: PrismaRocketMembersRepository,
}
```

### Controler

Aqui ficam as rotas e os tipos de métodos que chamam o respectivo repository

### DTO's

[src/dtos/create-team-member-body.ts]
É um exemplo de DTO. No caso é o DTO utilizado para criar um membro.
No DTO definimos validações como tamanho, tipo, obriatoriedade
O DTO pode é utilizado como tipo de entrada no Controller

### Repository

[src/repositories/rocket-members-repository.ts]
Utilizamos uma classe abstrata para a entidade Membros
