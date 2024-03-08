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

