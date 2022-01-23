pragma solidity ^0.5.0;
contract Suicidal{
    function kill() public{
        selfdestruct(msg.sender);
    }
}
