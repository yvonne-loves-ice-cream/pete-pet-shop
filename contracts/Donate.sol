// SPDX-License-Identifier: MIT
pragma solidity ^0.5.1; 


contract Donate {
    address payable public owner;
    address payable public payer;
    mapping(address => uint) public donationHistory;

    constructor(address payable _owner) public {
        owner = _owner;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    function doDonate() public payable returns (uint){
        payer = msg.sender;
        donationHistory[payer] = msg.value;
    }

    function withdraw() public payable onlyOwner {
       owner.transfer(address(this).balance);
    }
}
