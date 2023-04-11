// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

// contract sendEther{
//     address  public sender;

//     receive() external payable {} 

//     function toGetBalance() public view returns(uint){
//         return sender.balance;

//     }

//     function transferEther(address payable _to) public payable  {
//         (bool sent, bytes memory data) = _to.call{value:msg.value}("");
//         require(sent, "Failed to send Ether");
// }
// }



contract sendEther{
    // store previous balance
    uint public currentBalance;

    receive() external payable{
        currentBalance +=msg.value;

    }
    function sendViaCall(address payable _to, uint amount) public payable{
        (bool success,) = _to.call{value:amount}("");

        if(success)
        {
            currentBalance -=amount;
        }
    }
    

    // function transferEther(address payable _to, uint amount) public{
    //     _to.transfer(amount);
    //     currentBalance -=amount;
    // }
}