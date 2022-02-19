pragma solidity ^0.5.1;

import "./07-Math.sol";

contract Contract {
    using Math for uint256;

    uint public value;

    function calculate(uint _a, uint _b) public {
        value = _a.divide(_b);
    }
}