pragma solidity ^0.5.1;
pragma experimental ABIEncoderV2;
import "truffle/Console.sol";


contract Filter{
    mapping (uint => string) public breed;
    mapping (uint => uint) public age;
    mapping (uint => string) public sex; 
    mapping (uint => string) public location; 

    function filterByBreed(string memory _breed) public view returns (uint[16] memory) {
        uint[16] memory petIdList;
        uint i;
        for (i = 0; i < 16; i++) {
            if (keccak256(abi.encodePacked(_breed)) == keccak256(abi.encodePacked(breed[i]))){
                petIdList[i] = i;
            } else {
                petIdList[i] = 1000000;
            }
        }
        return petIdList;
    }

    function filterBySex(string memory _sex) public view returns (uint[16] memory) {
        uint[16] memory petIdList;
        uint i;
        for (i = 0; i < 16; i++) {
            if (keccak256(abi.encodePacked(_sex)) == keccak256(abi.encodePacked(sex[i]))){
                petIdList[i] = i;
            } else {
                petIdList[i] = 1000000;
            }
        }
        return petIdList;
    }

    function filterByAge(uint _age) public view returns (uint[16] memory) {
        uint[16] memory petIdList;
        uint i;
        for (i = 0; i < 16; i++) {
            if (_age == age[i]){
                petIdList[i] = i;
            } else {
                petIdList[i] = 1000000;
            }
        }
        return petIdList;
    }

    function filterByLocation(string memory _location) public view returns (uint[16] memory) {

        uint[16] memory petIdList;
        uint i;
        for (i = 0; i < 16; i++) {
            if (keccak256(abi.encodePacked(_location)) == keccak256(abi.encodePacked(location[i]))){
                petIdList[i] = i;
            } else {
                petIdList[i] = 1000000;
            }
        }
        return petIdList;
    }



    
    function getPetInfos() public {
        breed[0] = "Scottish Terrier";
        breed[1] = "Scottish Terrier";
        breed[2] = "French Bulldog";
        breed[3] = "Boxer";
        breed[4] = "French Bulldog";
        breed[5] = "French Bulldog";
        breed[6] = "Golden Retriever";
        breed[7] = "Golden Retriever";
        breed[8] = "Frech Bulldog";
        breed[9] = "Boxer";
        breed[10] = "Boxer";
        breed[11] = "Scottish Terrier";
        breed[12] = "French Bulldog";
        breed[13] = "Golden Retriever";
        breed[14] = "Golden Retriever";
        breed[15] = "Golden Retriever";
        age[0] = 3;
        age[1] = 3;
        age[2] = 2;
        age[3] = 2;
        age[4] = 2;
        age[5] = 3;
        age[6] = 3;
        age[7] = 3;
        age[8] = 2;
        age[9] = 3;
        age[10] = 2;
        age[11] = 3;
        age[12] = 3;
        age[13] = 4;
        age[14] = 2;
        age[15] = 2;
        sex[0] = "Girl";
        sex[1] = "Girl";
        sex[2] = "Boy";
        sex[3] = "Girl";
        sex[4] = "Girl";
        sex[5] = "Girl";
        sex[6] = "Girl";
        sex[7] = "Boy";
        sex[8] = "Boy";
        sex[9] = "Boy";
        sex[10] = "Boy";
        sex[11] = "Boy";
        sex[12] = "Boy";
        sex[13] = "Boy";
        sex[14] = "Boy";
        sex[15] = "Boy";
        location[0] = "Lisco Alabama";
        location[1] = "Tooleville West Virginia";
        location[2] = "Freeburn Idaho";
        location[3] = "Camas Pennsylvania";
        location[4] = "Gerber South Dakota";
        location[5] = "Innsbrook Illinois";
        location[6] = "Soudan Louisiana";
        location[7] = "Jacksonwald Palau";
        location[8] = "Honolulu Hawaii";
        location[9] = "Matheny Utah";
        location[10] = "Tyhee Indiana";
        location[11] = "Windsor Montana";
        location[12] = "Kingstowne Nevada";
        location[13] = "Sultana Massachusetts";
        location[14] = "Broadlands Oregon";
        location[15] = "Dawn Wisconsin";
    }
}