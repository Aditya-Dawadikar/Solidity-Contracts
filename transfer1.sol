pragma solidity ^0.4.22;

contract Transfer
{
    uint amnt;
    address toAcc;
    address fromAcc;
    
    
    function setAccountTo(address x) public
    {
        toAcc=x;
    }
     function setAccountFrom(address x) public
    {
        fromAcc=x;
    }
   function getBalanceTo() public view returns (uint256) {
        return address(toAcc).balance;
   }
   function getBalanceFrom() public view returns (uint256) {
        return address(fromAcc).balance;
   }
   function setAmount(uint x) public
   {
       amnt=x;
   }
   function sendAmount() public payable {
      fromAcc.transfer(msg.value);
   }
    
}