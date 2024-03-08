// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "./Interface/IDN404.sol";
import "@openzeppelin/contracts/utils/Context.sol";

error PriceNotMet(address nftAddress, uint256 price);
error ItemNotForSale(address nftAddress);
error NotListed(address nftAddress);
error AlreadyListed(address nftAddress);
error NoProceeds();
error NotOwner();
error NotApprovedForMarketplace();
error PriceMustBeAboveZero();
error NotApproved();

contract NFTMarketplace is Context {
    uint256 private counter;

    struct Listing {
        uint256 price;
        address seller;
    }

    event LogItemListed(
        address indexed seller,
        address indexed nftAddress,
        uint256 price
    );
    event LogItemCanceled(
        address indexed seller,
        address indexed nftAddress
    );
    event LogItemBought(
        address indexed buyer,
        address indexed nftAddress,
        uint256 price,
        uint256 fraction
    );
    mapping(address => Listing) private s_listings;
    mapping(address => uint256) private s_proceeds;
}