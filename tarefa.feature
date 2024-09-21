#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no meu carrinho.

Esquema do Cenário: Seleção de cor, tamanho e quantidade
Dado que eu acesse o catálogo de compras da EBAC-SHOP
Quando eu selecionar um <produto>
E escolher <cor>, <tamanho> e <quantidade>
Então deve exibir uma <mensagem> de item obrigatório

| produto | cor     | tamanho | quantidade | mensagem            |
|---------|---------|---------|------------|---------------------|
| "camisa"| "verde" | "M"     | "2"        | "Item obrigatório"  |
| "body"  | "branco"| "M"     | "2"        | "Item obrigatório"  |
| "calça" | "preta" | "38"    | "2"        | "Item obrigatório"  |

Cenário: Quantidade de produto por venda
Dado que eu acesse o catálogo de compras da EBAC-SHOP
Quando eu selecionar um "produto"
E selecionar a "quantidade"
Então deve aparecer a mensagem "Máximo 10 produtos por venda".

Cenário: Voltar ao estado original
Dado que eu acesse o catálogo de compras da EBAC-SHOP
Quando eu "desistir" da compra
E clicar no botão "limpar"
Então deve "voltar" ao estado inicial

Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

Dado que eu acesse minha conta no portal EBAC-SHOP
Quando eu digitar o usuário "lucas@ebac.com.br"
E a senha "luh33"
Então abrirá a tela de "Checkout"

Dado que eu acesse minha conta no portal EBAC-SHOP
Quando eu digitar o usuário "lucas@ebac.com.br"
E a senha "luh33"
Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

Funcionalidade: Tela de Cadastro - Checkout
Como cliente da EBAC-SHOP
Quero concluir meu Cadastro
Para finalizar minha compra

Dado que eu acesse a tabela de cadastro com as seguintes informações:

| Nome      | Sobrenome   | País    | Endereço        | Cidade      | CEP        | Telefone        | Endereço de e-mail           |
|-----------|-------------|---------|-----------------|-------------|------------|-----------------|------------------------------|
| "Mariana" | "da Silva"  | "Brasil"| "Rua Favonius"  | "São Paulo" | "05820-050"| "(11) 960678998"| "marianahenrique@ebac.com.br"|
| "Raffael" | "dos Santos"| "Brasil"| "Rua Marques"   | "São Paulo" | "05820-050"| "(11) 956789890"| "raffael@ebac.com.br"        |
| "Anjelica"| "da Veiga"  | "Brasil"| "Rua Doutor"    | "São Paulo" | "05820-050"| "(11) 967895432"| "anjelica@ebac.com.br"       |

Quando eu inserir as informações obrigatórias
Então deve exibir uma mensagem: "Cadastro efetuado com sucesso"

Dado que eu acesse a tabela de cadastro com as seguintes informações: 

| Nome      | Sobrenome   | País    | Endereço        | Cidade      | CEP         | Telefone         | Endereço de e-mail            |
|-----------|-------------|---------|-----------------|-------------|-------------|------------------|-------------------------------|
| "Mariana" | "da Silva"  | "Brasil"| "Rua Favonius"  | "São Paulo" | "05820-050" | "(11) 9606789"   | "marianahenrique@ebac.coom.br"|  <!-- E-mail inválido -->
| "Raffael" | "dos Santos"| "Brasil"| "Rua Marques"   | "São Paulo" | "05820-050" | "(11) 956789890" | "raffael@ebac.com..brr"       |  <!-- E-mail inválido -->
| "Anjelica"| "da Veiga"  | "Brasil"| "Rua Doutor"    | "São Paulo" | "05820-050" | "(11) 967895432" | "anjelica@ebac.com.bbr"       |  <!-- E-mail inválido -->

Quando eu inserir um e-mail inválido
Então deve exibir uma mensagem de erro: "E-mail inválido"

Dado que eu acesse a tabela de cadastro com as seguintes informações:

| Nome     | Sobrenome  | País    | Endereço        | Cidade      | CEP        | Telefone        | Endereço de e-mail          |
|----------|------------|---------|-----------------|-------------|------------|-----------------|-----------------------------|
| "0000000"| "00000000" | "000000"| "00000000000"   | "000000000" | "00000000" | "(11) 000000000"| "0000000000000000000"       |
| "0000000"| "000000000"| "000000"| "00000000000"   | "000000000" | "00000000" | "(11) 000000000"| "0000000000000000000"       |
| "0000000"| "00000000" | "000000"| "00000000000"   | "000000000" | "00000000" | "(11) 000000000"| "0000000000000000000"       |

Quando algum campo obrigatório estiver vazio
Então deve exibir uma mensagem de alerta: "Preencha os itens obrigatórios"
