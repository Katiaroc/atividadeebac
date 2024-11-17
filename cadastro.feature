Funcionalidade: Tela de Cadastro - Checkout  
Como cliente da EBAC-SHOP  
Quero concluir meu Cadastro  
Para finalizar minha compra.

Cenário: Cadastro bem-sucedido
Dado que eu acesse a tabela de cadastro com as seguintes informações:

 Nome      | Sobrenome   | País    | Endereço         | Cidade        | CEP        | Telefone          | Endereço de e-mail           
 "Mariana" | "da Silva"  | "Brasil"|"Rua Favonius"    | "São Paulo"   | "05820-050" | "(11) 960678998"  | "marianahenrique@ebac.com.br"
 "Raffael" | "dos Santos"| "Brasil" | "Rua Marques"   | "São Paulo" | "05820-050"| "(11) 956789890"| "raffael@ebac.com.br"        
 "Anjelica"| "da Veiga"  | "Brasil" | "Rua Doutor"    | "São Paulo" | "05820-050"| "(11) 967895432"| "anjelica@ebac.com.br"       

Quando eu inserir as informações obrigatórias  
Então deve exibir uma mensagem: "Cadastro efetuado com sucesso".

Cenário: E-mail inválido
Dado que eu acesse a tabela de cadastro com as seguintes informações: 

| Nome      | Sobrenome   | País    | Endereço        | Cidade      | CEP         | Telefone         | Endereço de e-mail            |
| "Mariana" | "da Silva"  | "Brasil"| "Rua Favonius"  | "São Paulo" | "05820-050" | "(11) 9606789"   | "marianahenrique@ebac.coom.br"|  <!-- E-mail inválido -->
| "Raffael" | "dos Santos"| "Brasil"| "Rua Marques"   | "São Paulo" | "05820-050" | "(11) 956789890" | "raffael@ebac.com..brr"       |  <!-- E-mail inválido -->
| "Anjelica"| "da Veiga"  | "Brasil"| "Rua Doutor"    | "São Paulo" | "05820-050" | "(11) 967895432" | "anjelica@ebac.com.bbr"       |  <!-- E-mail inválido -->

Quando eu inserir um e-mail inválido  
Então deve exibir uma mensagem de erro: "E-mail inválido".

Cenário: Campos obrigatórios vazios
Dado que eu acesse a tabela de cadastro com as seguintes informações:

| Nome     | Sobrenome  | País    | Endereço        | Cidade      | CEP        | Telefone        | Endereço de e-mail          |
| "0000000"| "00000000" | "000000"| "00000000000"   | "000000000" | "00000000" | "(11) 000000000"| "0000000000000000000"       |
| "0000000"| "000000000"| "000000"| "00000000000"   | "000000000" | "00000000" | "(11) 000000000"| "0000000000000000000"       |
| "0000000"| "00000000" | "000000"| "00000000000"   | "000000000" | "00000000" | "(11) 000000000"| "0000000000000000000"       |

Quando algum campo obrigatório estiver vazio  
Então deve exibir uma mensagem de alerta: "Preencha os itens obrigatórios".
