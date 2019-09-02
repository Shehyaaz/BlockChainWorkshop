// this is a smart contract for a fungible asset such as a coin.
pragma solidity ^0.5.0;
contract coin{
  address owner;
  event transfer(address from, address to, uint amt);
  modifier onlyowner(){
    require(owner == msg.sender);
    _;
  }
  mapping(address => uint16) public record;
  uint16 public minBalance  = 10;
  
  constructor(uint16 _balance) public{
    record[msg.sender] = _balance;
    owner = msg.sender;
  }
  
  function getBalance() public view returns(uint16){
    return record[msg.sender];
  }
  
  function transferAmount(address _to, uint16 _val) public{
    require(record[msg.sender] >= _val);
    record[msg.sender] -= _val;
    record[_to] += _val;
    emit transfer(msg.sender, _to, _val);
  }
  
  function addUser(address _user) public{
    record[_user] = minBalance;
  }
}
