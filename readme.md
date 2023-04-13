### Descrição do Projeto:
Projeto desenvolvido na Formação Linux Fundamentals da Digital Inovation One (DIO) como primeiro projeto da formação e tem como objetivo criar um script em Shell que tenha como finalidade a criação de diretórios, grupos, usuários e determine as suas permissões em cada diretório criado.

### Tabela Demonstrativa:

| Diretórios: | /publico  | /adm                       | /ven                               | /sec                             |
|-------------|-----------|----------------------------|------------------------------------|----------------------------------|
| Grupos:     | --------- | GRP_ADM                    | GRP_VEN                            | GRP_SEC                          |
| Usuários:   | --------- | 1. Carlos 2. Maria 3. Joao | 1. Debora 2. Sebastiana 3. Roberto | 1. Josefina 2. Amanda 3. Rogerio |
| Permições   | 777       | 770                        | 770                                | 770                              |

### Como executar:
Como usuário root utilizar o comando: chmod +x iac.sh após isso executar o script com ./iac.sh