pragma solidity ^0.4.22;

import "openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

contract FNT is StandardToken {
    string public constant name = "Factchain Network Token";
    string public constant symbol = "FNT";
    uint8 public constant decimals = 18;

    uint256 public constant INITIAL_SUPPLY = 10000 * (10 ** uint256(decimals));

    constructor() public {
        totalSupply_ = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY;
        emit Transfer(address(0), msg.sender, INITIAL_SUPPLY);
    }
}
