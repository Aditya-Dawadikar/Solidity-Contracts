pragma solidity ^0.4.22;

contract bank{
    
    uint bal;
    
    constructor() public
    {
        bal=0;
    }
    
    function getBal(uint x) public{
        
        bal=x;
    } 
    
    function deposite(uint x) public returns(string) {
        if(x>20000)
        {
         bal=bal+x;
         return "Success..!!";
        }
        else
        	return "Invalid amount"


    }
    
    function withdraw(uint x) public returns(string) {

    	if(x<bal)
    	{
         bal=bal-x;
         return "Successful..!!";
    	}
    	else
    		return "Invalid amount.";
    }
    
    function display() public view returns(uint){
        return bal;
    }
}