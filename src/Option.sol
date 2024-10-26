// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// /**
//  * @title Option Token
//  * @notice This token is an ERC20 detailed token with added capability to be minted by the owner.
//  * It is used to represent user's shares when providing liquidity to swap contracts.
//  * @dev Only Swap contracts should initialize and own LPToken contracts.
//  */
// contract Option is ERC20 {
//     address private _owner;

//     /**
//      * @notice Initializes this LPToken contract with the given name and symbol
//      * @dev The caller of this function will become the owner. A Swap contract should call this
//      * in its initializer function.
//      * @param name name of this token
//      * @param symbol symbol of this token
//      */
//     function initialize(string memory name, string memory symbol, address owner)
//         external
//         initializer
//         returns (bool)
//     {
//         _owner = owner;
//         __ERC20_init(name, symbol);
//         return true;
//     }

//     /**
//      * @notice Mints the given amount of LPToken to the recipient.
//      * @dev only owner can call this mint function
//      * @param recipient address of account to receive the tokens
//      * @param amount amount of tokens to mint
//      */
//     function mint(address recipient, uint256 amount) external {
//         require(msg.sender == _owner, "OptionToken: only owner can mint");
//         require(amount != 0, "OptionToken: cannot mint 0");
//         _mint(recipient, amount);
//     }

//     /*///////////////////////////////////////////////////////////////
//                             BEFORE TRANSFER HOOKS
//     //////////////////////////////////////////////////////////////*/

//     /**
//      * @dev Overrides ERC20._beforeTokenTransfer() which get called on every transfers including
//      * minting and burning. This ensures that Swap.updateUserWithdrawFees are called everytime.
//      * This assumes the owner is set to a Swap contract's address.
//      */
//     function _update(address from, address to, uint256 value) internal virtual override {
//         super._update(from, to, value);
//         require(to != address(this), "OptionToken: cannot send to itself");
//     }

// }