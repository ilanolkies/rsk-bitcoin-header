pragma solidity ^0.5.0;

 /* BlockInfoProvider contract interface */

contract IBlockHeaderPrecompiledContract {
    function getBitcoinHeader(int256 indexBlock) public view returns (bytes memory coinbase);
}
