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





// ARRAYS

contract Types {

    uint[6] data;

    function array_exemplo() public returns (uint[6] memory){

        data = [uint(10), 20, 30, 40, 50, 60];

        return (data);
    }
}

contract Types {

    uint[6] data;

    function array_exemplo() public returns (uint[6] memory){

        data = [uint(10), 20, 30, 40, 50, 60];

        return (data);
    }
}



// Array dinamico


pragma solidity ^0.5.0;

contract Types {
    int[] data;

    function dynamic_array() public returns (int[] memory) {
        // Inicializando o array em memória
        data = new int      data[0] = -60;
        data[1] = 70;
        data[2] = -30;
        data[3] = 90;
        data[4] = -100;
        data[5] = -120;
        data[6] = 140;

        // Criando uma cópia em memória para retornar
        int[] memory memoryData = data;
        return memoryData;
    }
}


// BOOK

pragma solidity ^0.8.0; // Versão mais recente

contract Library {
    struct Book {
        string title;
        string author;
        uint book_id;
    }

    Book public book; // Tornar "book" pública para acesso direto

    function setBook() public {
        book = Book('Solidity for Dummies', 'DIO', 1);
    }

    function getBookTitle() public view returns (string memory) {
        return book.title;
    }
}

// or 

struct Book {
    string title;
    string author;
    uint book_id;
}

Book book;

function setBook() public {
    book = Book('Solidity for Dummies', 'DIO', 1);
}

function getBookTitle() public view returns (string memory) {
    return book.title;
}

