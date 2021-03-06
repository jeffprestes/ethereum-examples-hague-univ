// Deployed on Ropsten 0x2bD819440B8621214A17e7BCFD70107bBE0A28fC
pragma solidity ^0.5.12;

contract SetGetEmit {
    uint8 public storedData;
    event Log(string message,address caller, uint8 value);
  
    function Set(uint8 x) public returns (uint8) {
        storedData = x;
        emit Log("In function set",address(this), storedData );
        return storedData;
    }

    function Get() public view returns (uint8) {
        return storedData;
    }
}
