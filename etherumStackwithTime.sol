// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;

contract Quiz {


address owner;
uint withDrawerPosition;
uint depositOn;
constructor() {
         owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
         withDrawerPosition  = 1;
}


struct deposit{
        address dopsiter;
        uint value;
       uint depositOn;
} 


mapping (address => deposit) public dopositer;


function DepositeEther() public payable {
      require(msg.sender != owner , "not Allowed");
      require(msg.value > 1 ether , "value must be greater than to 1");
      dopositer[msg.sender].value = msg.value;
            dopositer[msg.sender].dopsiter =msg.sender;
      dopositer[msg.sender].depositOn = block.timestamp;

}



function withDraw(address payable _payee) public payable returns (uint) {
      require(msg.sender != owner ,"not Allowed");
      require(_payee != owner ,"not Allowed");

    require( dopositer[_payee].value > 0, "zero balance");


  uint newAmount;

    uint256 amount =  dopositer[_payee].value ;


if (dopositer[_payee].depositOn  > block.timestamp + 1 minutes) {

            newAmount = amount + (amount * 1 / 100 * 10);

    }else if (dopositer[_payee].depositOn  <= block.timestamp + 1 minutes) {
            newAmount = amount + (amount * 2 / 100 * 10);

    }else if ( dopositer[_payee].depositOn  <= block.timestamp + 5 minutes) {

    newAmount = amount + (amount * 3 / 100 * 10);

    }

    _payee.transfer(newAmount);


    dopositer[_payee].value  = 0;

    return newAmount;
}



}

// contract Deposit {
//     mapping (address => uint256) depositors;
//     uint counter;

//     constructor() {
//         counter = 0;
//     }
//     function deposit() public payable {
//         require(msg.value >= 1 ether,"The minimum amount entered should be 1 ether");
//         depositors[msg.sender] += msg.value;
//     }

//     function recieve() external  payable {
//         deposit();
//     }

//     function withdrawal() public {
//         require(depositors[msg.sender] > 0,"You have not deposited any ether");
//         if(counter == 0) {
//             payable(msg.sender).transfer((depositors[msg.sender] / 100) * 90);
//         }
//         else if(counter == 1) {
//             payable(msg.sender).transfer((depositors[msg.sender] / 100) * 80);
//         }
//         else if(counter == 2) {
//             payable(msg.sender).transfer((depositors[msg.sender] / 100) * 70);
//         }
//         depositors[msg.sender] = 0;
//         counter += 1;
//     }
// }
