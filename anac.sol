// SPDX-License-Identifier: GPL-3.0

// Especifica a versão do compilador Solidity
pragma solidity >=0.8.2 <0.9.0;

// Declara o contrato chamado Anac
contract Anac{
    // Declara uma variável de estado chamada `idade` do tipo uint256 para armazenar a idade
    uint256 idade;
    
    // Declara uma variável pública `owner` do tipo address para armazenar o endereço do proprietário do contrato
    address public owner;

    // O construtor é uma função especial que é executada no momento da implantação do contrato
    constructor() {
        // Define o valor inicial de `idade` como 18
        idade = 18;
        
        // Define o proprietário do contrato como o endereço que está implantando o contrato
        owner = msg.sender;
    }

    // Define um modificador chamado `onlyOwner` que restringe o acesso a apenas o proprietário do contrato
    modifier onlyOwner() {
        // Requer que o chamador da função (msg.sender) seja o proprietário, caso contrário, reverte a transação
        require(msg.sender == owner, "Not an owner");
        
        // Continua a execução da função que usa esse modificador
        _;
    }

    // Define uma função `setIdade` que permite apenas ao proprietário do contrato definir um novo valor para `idade`
    function setIdade(uint256 _idade) external onlyOwner() returns (bool){
        // Atualiza o valor de `idade` com o valor fornecido como argumento
        idade = _idade;
        
        // Retorna verdadeiro indicando que a operação foi bem-sucedida
        return true;
    }

    // Define uma função `getIdade` que permite a qualquer um visualizar o valor atual de `idade`
    function getIdade() external view returns(uint256) {
        // Retorna o valor atual de `idade`
        return idade;
    }
}
