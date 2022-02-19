pragma solidity ^0.5.1;

contract ERC20Token {

    string public name;
    mapping(address => uint256) public balances;

    function mint() public {
        balances[msg.sender]++;
    }
}

contract Contract {

    address payable wallet;
    address public token;


    constructor(address payable _wallet, address _token) public {
        wallet = _wallet;
        token = _token;
    }

    function() external payable {
        buyToken();
    }

    function buyToken() public payable {
        wallet.transfer(msg.value);
    }
}