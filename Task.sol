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

 function setState(uint _updateState) public returns(uint){
    state = _updateState;
    return state;
    }

 function getState() public view returns(uint){

    return state;
    }
}




contract Task5{
    uint a;
    uint b;
    function evaluate(uint _a,uint _b) public returns(uint){
     a=_a;
     b=_b;
    uint c = (a+b)-(a-b);
     return c;
    }
}

 contract Task6{
     function getRemainder(uint a) public pure returns (uint){
         require(a > 0,"A must be greater than zero");
         return a % 3;
     }
}


  contract Task7{
     function getAverage(uint a,uint b , uint c) public pure returns (uint){
         require(a > 0 && b > 0 &&  c > 0 ,"Value must be greater than zero");
         uint avg = a + b + c;
         return avg / 3;
     }
 }
