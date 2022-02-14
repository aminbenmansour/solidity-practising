pragma solidity ^0.5.1;

contract DataStructureContract {

    mapping(uint256 => Person) public person;
    uint256 public peopleCount = 0;

    struct Person {
        string _firstname;
        string _lastname;
    }

    function addPerson(string memory _firstname, string memory _lastname) public {
        person[peopleCount] = Person(_firstname, _lastname);
        peopleCount++;
    }
}
