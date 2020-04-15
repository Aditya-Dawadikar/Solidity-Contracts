pragma solidity ^0.4.22;

contract setget{
    
    uint stored;
    
    
    function set(uint x) public {
        
        stored=x;
    }
    
    function get() public view returns(uint)
    {
        return stored;
    }
}
