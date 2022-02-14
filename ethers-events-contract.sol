pragma solidity ^0.5.1;

contract EthersEventsContract {

    mapping(address => uint256) public balances;

    address payable wallet;

    constructor(address payable _wallet) public {
        wallet = _wallet;
    }

    function() external payable {
        buyToken();
    }

    function buyToken() public payable {
        // buy token
        balances[msg.sender] += 1;

        // send ethers to wallet
        wallet.transfer(msg.value);
    }
}
