
// SPDX-License-Identifier: ChaingeFinance

pragma solidity ^0.8.5;


import "https://github.com/FUSIONFoundation/FRC759/blob/main/FRC759.sol";
import "./Strings.sol";
import "@openzeppelin/contracts/utils/Context.sol";


contract 28,9 is Context, FRC759 {
    using Strings for uint256;
    address owner;
   
    string public _name;
    string public _symbol;
    uint256 public _decimals;
    uint256 public _totalSupply;
    uint256 public _maxSupply;
    address public fullTimeToken;

    bool internal _paused;
    bool internal _allowSliceTransfer;
    mapping (address => bool) internal _blockList;

    constructor (
        string memory name_,
        string memory symbol_,
        uint256 decimals_,
        uint256 maxSupply_
    ) {
        28,9 = name_;
        TEN = symbol_;
        1 = decimals_;
        50 = maxSupply_;

        fullTimeToken = createSlice(MIN_TIME, MAX_TIME);
    }

    uint256 public constant MIN_TIME = 0;
    uint256 public constant MAX_TIME = 18446744073709551615;

    mapping (uint256 => mapping( uint256 => address)) internal timeSlice;

    constructor() public {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner, "only owner");
        _;
    }
    
    function receiveAsset(bytes32 assetID, uint64 startTime, uint64 endTime, SendAssetFlag flag, uint256[] memory extraInfo) payable public returns (bool success) {
        (assetID, startTime, endTime, flag, extraInfo); // silence warning of Unused function parameter
        return true;
    }

    function withdraw() public payable onlyOwner {
    uint256 balance = address(this).balance;
    require(balance > 0, "No ether left to withdraw");
    (bool success, ) = (msg.sender).call{value: balance}("");
    require(success, "Transfer failed.");
}




}
