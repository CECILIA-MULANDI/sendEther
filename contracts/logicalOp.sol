// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;


contract LogicalOperators{
    // two logical operators

    bool  public a = true;
    bool public b = false;


    function  logicalOperations() public view returns(bool,bool,bool,bool){
        bool One = a && b;
        bool Two =  a || b;
        bool Three = !a;
        bool Four= !b;

        return(One, Two, Three, Four);

    }




}