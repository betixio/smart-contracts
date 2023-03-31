//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol"

//@todo
contract BetixDapp is Ownable {
    struct predictionDetails {
        string title;
        string author;
        bytes32 contentHash;
        uint256 timestamp;
        IERC20 token;
        address payable seller;
        uint256 price;
    }

    predictionDetails[] public predictions;

    enum purchaseState { Created, Locked, Inactive }

    function addPrediction(string calldata _title, string calldata _author, bytes32 _contentHash, uint256 _price, IERC20 _tokenAddress)
    external
    onlyOwner
    {
        predictions.push(blogDetails(_title, _author, _contentHash, block.timestamp, _tokenAddress, _price));
    }

    function purchasePrediction() {

    }
}