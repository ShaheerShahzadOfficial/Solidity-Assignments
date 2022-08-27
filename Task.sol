// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0; 

contract Task1{
    function print() public pure returns(string memory){
        return ("Hello Solidity");
    }
}


contract Task2{
uint num = 10;
 function print() public view returns(uint){
        return num ;
    }
}


contract Task3{
 function print() public pure returns(uint){
    uint local = 20;
        return local ;
    }


}



contract Task4{
    uint state ;

 function print(uint _updateState) public returns(uint){
    state = _updateState;
    return state;
    }
}
