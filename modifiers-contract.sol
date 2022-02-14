pragma solidity ^0.5.1;

contract ModifiersContract {

    mapping(uint256 => Person) public person;
    uint256 public peopleCount = 0;

    address owner;

    struct Person {
        string _firstname;
        string _lastname;
    }

    constructor() public {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    function addPerson(string memory _firstname, string memory _lastname) public onlyOwner {
        person[peopleCount] = Person(_firstname, _lastname);
        peopleCount++;
    }
}
