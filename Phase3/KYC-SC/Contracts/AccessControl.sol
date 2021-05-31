pragma solidity ^0.7.4;
contract AccessControl {
    
    address admin;      // Admin address
    
    // constructor to set the admin when contract is deployed
    constructor(address _owner) {
        admin = _owner;
    }
    
    
    modifier onlyAdmin(address _sender) {
        require(_sender == admin, "Only the Admin can perform this operation");
        _;
    }
    
    modifier onlyBank(address _sender) {
        require(_sender != admin, "Only the Bank can perform this operation");
        _;
    }
}