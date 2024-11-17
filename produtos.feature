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
