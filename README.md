# Anac Smart Contract

## Descrição

O contrato inteligente `Anac`, escrito em Solidity, visa gerenciar um atributo de idade com funcionalidades básicas para definir e obter a idade. Este contrato é desenvolvido para ser utilizado na Ethereum Blockchain e é compatível com a versão do compilador Solidity `>=0.8.2 <0.9.0`. A funcionalidade principal do contrato permite que apenas o proprietário do contrato (quem o implantou) possa alterar o valor da idade.

## Características

- **Definir Idade**: Permite que o proprietário do contrato defina um novo valor para a idade.
- **Obter Idade**: Permite a qualquer usuário visualizar o valor atual da idade.
- **Propriedade**: Inclui uma verificação de propriedade para certas operações, reforçando a segurança e a integridade do contrato.

## Começando

Para utilizar este contrato, você precisará de um ambiente que suporte a compilação e implantação de contratos inteligentes Solidity, como [Remix](https://remix.ethereum.org).

### Pré-requisitos

- Uma carteira Ethereum com ETH para implantação (se estiver implantando na rede Ethereum)
