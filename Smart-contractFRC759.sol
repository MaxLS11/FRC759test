// SPDX-License-Identifier: ChaingeFinance

pragma solidity ^0.5.4;

import "https://github.com/cross-chain/efsn/contracts/fsn/FSNContract.sol";

contract 29,8 is FSNContract {
    address owner;
    modifier onlyOwner {
        require(msg.sender == owner, "only owner");
        _;
    }

    constructor() public {
        owner = msg.sender;
    }

    function receiveAsset(bytes32 assetID, uint64 startTime, uint64 endTime, SendAssetFlag flag, uint256[] memory extraInfo) payable public returns (bool success) {
        (assetID, startTime, endTime, flag, extraInfo); // silence warning of Unused function parameter
        return true;
    }
    
   }
