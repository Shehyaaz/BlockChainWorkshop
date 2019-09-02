pragma solidity ^0.5.0;
contract contract2{
    struct customer{
        uint256 mobile;
        string name;
        string email;
    }
    mapping(address => customer) people;
    
    function addCustomer(uint256 _mobile, string memory _name, string memory _email) public
    {
        people[msg.sender] = customer(_mobile,_name,_email);
    }
    
    function showCustomer() public view returns(string memory)
    {
        return (people[msg.sender].name);
    }
    function getName() public view returns(address)
    {
        return msg.sender;
    }
}
