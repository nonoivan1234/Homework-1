// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Problem 1 Interface & Contract */
contract StudentV1 {
    // Note: You can declare some state variables here
    uint256 public code = 2000;
    uint8 count = 0;

    function register() external returns (uint256) {
        // TODO: please add your implementaiton here
        count++;
        if(count == 2){
            return code = 123;
        }
        return code;
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        if(IClassroomV2(msg.sender).isEnrolled()){
            return 123;
        }
        return 1000;
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        uint256 gas = gasleft();

        if(gas < 7000)  return 123;
        return 1000;
    }
}
