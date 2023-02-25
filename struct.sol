pragma solidity ^0.8.0;

contract structTest {

    //Struct Declaration
    struct Book {
        uint id;
        string name;
        string author;
    }

    //Declaring a structure object
    Book book1;

    //Assigning values to the book
    Book book2 = Book(1, 'Summer Love', 'Subin Bhattarai');

    //fn to set values for the fields of book
    function setBook() public {
        book1 = Book(2, 'Intro to Ethereum', 'Chris Dannen');
    }

    //Print
    function bookInfo() public view returns(
        string memory, uint
    ) {
        return (book1.name, book1.id);
    }
}