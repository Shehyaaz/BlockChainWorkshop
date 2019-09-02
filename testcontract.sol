pragma solidity ^0.5.0;
contract testcontract{
    string public name;
    string[] public arr;
    
    struct person{
      string first;
      string last;
      uint age;
    }
    person a;
    constructor () public{
        name = "Shehyaaz";
        arr.push(name);
        a  = person('shehyaaz','nayazi',20);
    }
    function change(string memory _name) public {
        name = _name;
        arr.push(name);
    }
    function getname() public view returns(string memory,string memory, uint){
        return (a.first, a.last, a.age);
    }
}
