pragma solidity ^0.5.1;

import "./07-Math.sol"

contract Contract {
    string public value;

    function calculate(uint _a, uint _b) public {
        value = Math.divide(_a, _b);
    }
}