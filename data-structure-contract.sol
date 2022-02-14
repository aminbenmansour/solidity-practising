pragma solidity ^0.5.1;

contract DataStructureContract {

    Person[] public person;

    struct Person {
        string _firstname;
        string _lastname;
    }

    function addPerson(string memory _firstname, string memory _lastname) public {
        person.push(Person(_firstname, _lastname));
    }
}
