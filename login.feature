# language: pt

Funcionalidade: Login na plataforma  
Como cliente da EBAC-SHOP  
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos.

## Cenário: Login bem-sucedido
Dado que eu acesse minha conta no portal EBAC-SHOP  
Quando eu digitar o usuário "lucas@ebac.com.br"  
E a senha "luh33"  
Então abrirá a tela de "Checkout".

## Cenário: Login com falha
Dado que eu acesse minha conta no portal EBAC-SHOP  
Quando eu digitar o usuário "lucas@ebac.com.br"  
E a senha "luh33"  
Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos".
