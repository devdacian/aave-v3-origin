// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

import {IPriceOracleGetter} from '../munged/contracts/interfaces/IPriceOracleGetter.sol';

contract SymbolicPriceOracle is IPriceOracleGetter {
  address public base;
  uint256 public unit;
  mapping(address => uint256) public price;

  function BASE_CURRENCY() external view returns (address) {
    return base;
  }

  function BASE_CURRENCY_UNIT() external view override returns (uint256) {
    return unit;
  }

  function getAssetPrice(address asset) external view override returns (uint256) {
    return price[asset];
  }
}
