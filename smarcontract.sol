//----------------------------//
// cálculo de exponenciação.  //
//----------------------------//
pragma solidity ^0.5.0;

// Definição da biblioteca
library LibExample {
    // Função que calcula a exponenciação de um número com outro
    function pow(uint a, uint b) public view returns (uint, address) {
        return (a ** b, address(this));
    }
}

// Definição do contrato
contract LibraryExample {
    // Deploy da biblioteca para o tipo de dado inteiro
    using LibExample for uint;
    address owner = address(this);

    // Chamando a função da biblioteca
    function getPow(uint num1, uint num2) public view returns (uint, address) {
        return num1.pow(num2);
    }
}



//----------------------------//
// teste de memory/storage    //
//----------------------------//

contract Storage {

  int[] public numbers; //state 

  function getNumbers() public returns (int[] memory, int[] memory)
  {
    numbers.push(1);
    numbers.push(2);

    int[] storage newNumbers = numbers;

    newNumbers[0] = 12;

    return (numbers, newNumbers);
