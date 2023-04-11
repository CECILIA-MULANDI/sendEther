// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;


contract transferEther{
    // keep track of how much ether we have
    uint public currentEther ;

// should be able to receive ether
    receive () external payable{}
    // send the ether

    function sendEther(address payable _to, uint amount) public{
        // we will use the call function

        (bool send,) = _to.call{value:amount}("");
        if(send)
        {
            // return the balance of sender
            currentEther -= amount;

        }
        else {
             require(send, "Failed to send Ether");
        }
    }



}