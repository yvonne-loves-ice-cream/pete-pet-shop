// SPDX-License-Identifier: MIT
pragma solidity ^0.5.1;

contract Election {
    string petName;
    string[] nameList;
    mapping(string => uint256) public voteHistory;

    function voting(string memory _petName) public {
        petName = _petName;
        if (voteHistory[petName] == 0){
            nameList.push(petName);
        }
        voteHistory[petName] = voteHistory[petName] + 1;
    }

    function getPetResult() public view returns(string memory){
        uint256 maxVote;
        string memory maxVotePet;
        for (uint i = 0; i < nameList.length; i++){
            if (voteHistory[nameList[i]] > maxVote){
                maxVote = voteHistory[nameList[i]];
                maxVotePet = nameList[i];
            }
        }
        return maxVotePet;
    }
}
