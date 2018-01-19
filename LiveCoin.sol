pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract LiveCoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function LiveCoin(address _owner)  UpgradeableToken(_owner) {
    name = "LiveCoin";
    symbol = "LIVE";
    totalSupply = 7500000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}