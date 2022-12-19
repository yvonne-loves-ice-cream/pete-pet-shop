pragma solidity ^0.5.1;
pragma experimental ABIEncoderV2;

contract Filter{
    mapping (uint => string) public petBreed;
    mapping (uint => uint) public petAge;
    mapping (uint => string) public petSex; 

    function filterByBreed(string memory _breed) public view returns (uint[16] memory) {
        uint[16] memory petIdList;
        uint i;
        for (i = 0; i < 16; i++) {
            if (keccak256(abi.encodePacked(_breed)) == keccak256(abi.encodePacked(petBreed[i]))){
                petIdList[i] = i;
            } else {
                petIdList[i] = 666;
            }
        }
        return petIdList;
    }

    function filterBySex(string memory _sex) public view returns (uint[16] memory) {
        uint[16] memory petIdList;
        uint i;
        for (i = 0; i < 16; i++) {
            if (keccak256(abi.encodePacked(_sex)) == keccak256(abi.encodePacked(petSex[i]))){
                petIdList[i] = i;
            } else {
                petIdList[i] = 666;
            }
        }
        return petIdList;
    }

    function filterByAge(uint _age) public view returns (uint[16] memory) {
        uint[16] memory petIdList;
        uint i;
        for (i = 0; i < 16; i++) {
            if (_age == petAge[i]){
                petIdList[i] = i;
            } else {
                petIdList[i] = 666;
            }
        }
        return petIdList;
    }
    
    function getPetInfos() public {
        petBreed[0] = "Scottish Terrier";
        petBreed[1] = "Scottish Terrier";
        petBreed[2] = "French Bulldog";
        petBreed[3] = "Boxer";
        petBreed[4] = "French Bulldog";
        petBreed[5] = "French Bulldog";
        petBreed[6] = "Golden Retriever";
        petBreed[7] = "Golden Retriever";
        petBreed[8] = "Frech Bulldog";
        petBreed[9] = "Boxer";
        petBreed[10] = "Boxer";
        petBreed[11] = "Scottish Terrier";
        petBreed[12] = "French Bulldog";
        petBreed[13] = "Golden Retriever";
        petBreed[14] = "Golden Retriever";
        petBreed[15] = "Golden Retriever";
        petAge[0] = 3;
        petAge[1] = 3;
        petAge[2] = 2;
        petAge[3] = 2;
        petAge[4] = 2;
        petAge[5] = 3;
        petAge[6] = 3;
        petAge[7] = 3;
        petAge[8] = 2;
        petAge[9] = 3;
        petAge[10] = 2;
        petAge[11] = 3;
        petAge[12] = 3;
        petAge[13] = 4;
        petAge[14] = 2;
        petAge[15] = 2;
        petSex[0] = "Girl";
        petSex[1] = "Girl";
        petSex[2] = "Boy";
        petSex[3] = "Girl";
        petSex[4] = "Girl";
        petSex[5] = "Girl";
        petSex[6] = "Girl";
        petSex[7] = "Boy";
        petSex[8] = "Boy";
        petSex[9] = "Boy";
        petSex[10] = "Boy";
        petSex[11] = "Boy";
        petSex[12] = "Boy";
        petSex[13] = "Boy";
        petSex[14] = "Boy";
        petSex[15] = "Boy";
    }
}