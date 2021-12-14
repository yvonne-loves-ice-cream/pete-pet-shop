// SPDX-License-Identifier: MIT
pragma solidity ^0.5.1;

contract Purchase {
    address payable public owner;
    

    
    address[16] public buyers;
    mapping(address => uint) public purchaseMap;

    constructor(address payable _owner) public {
        owner = _owner;
    }

    function purchase(uint petId) public payable returns (uint) {
        require (petId >= 0);
        buyers[petId] = msg.sender;
        purchaseMap[msg.sender] = msg.value;
        return petId;
    }

    function getBuyers() public view returns (address[16] memory){
        return buyers;
    }
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
    function withdraw() public payable onlyOwner {
       owner.transfer(address(this).balance);
    }
}

