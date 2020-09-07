pragma solidity ^0.5.0;

import "./IBlockHeaderPrecompiledContract.sol";

contract Random {
  IBlockHeaderPrecompiledContract BitcoinHeader =
  IBlockHeaderPrecompiledContract(0x0000000000000000000000000000000001000010);

  function random () public view returns (bytes32) {
    int256 selector = (int256(keccak256(abi.encodePacked(block.timestamp, block.coinbase, block.number)))) % 2048;
    bytes memory header1 = BitcoinHeader.getBitcoinHeader(selector);
    bytes memory header2 = BitcoinHeader.getBitcoinHeader(4000 - selector);
    return keccak256(abi.encodePacked(header1, header2));
  }
}
