// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/access/Ownable.sol";

contract Token is ERC20, Ownable{
    constructor (uint initialSupply) ERC20("Arthur", "Mrgn"){
        _mint(msg.sender, initialSupply);
    }

    function mint (address _to, uint amount) external {
        require(amount > 0, "Amount cannot be zero");
        _mint(_to, amount);
    }

    function burn (uint amount) external {
        require(amount > 0, "Amount cannot be zero");
        _burn(msg.sender, amount);
    }

    function transfeToken(address _to, uint amount) external {
        require(_to != address(0), "Invalid address");
        require(amount>0, "Amount cannot be zero");
        _transfer(msg.sender, _to, amount);
}
}