// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {Test} from "forge-std/Test.sol";
import {BasicNft} from "../src/BasicNft.sol";
import {DeployBasicNft} from "../script/DeployBasicNft.s.sol";

contract BasicNftTest is Test {
    string constant NFT_NAME = "Dogie";
    string constant NFT_SYMBOL = "DOG";
    BasicNft public basicNft;
    DeployBasicNft public deployer;
    string public constant PUG_URI =
        "ipfs://bafybeig37ioir76s7mg5oobetncojcm3c3hxasyd4rvid4jqhy4gkaheg4/?filename=0-PUG.json";
    address public constant USER = address(1);

    function setUp() public {
        deployer = new DeployBasicNft();
        basicNft = deployer.run();
    }

    // Test to verify the name of the token is correct
    function testNameIsCorrect() public view {
        // Using `assertEq()` for string comparison (Foundry's built-in helper)
        // `assertEq()` can compare strings directly because it internally uses `keccak256` hashing for comparison.
        assertEq(
            basicNft.name(),
            "Dogie",
            "The name of the token should be 'Dogie'"
        );

        // Using `assert()` for string comparison (Solidity built-in)
        // `assert()` cannot compare `string` values directly, so we use `keccak256` to hash the strings and then compare their hashes.
        // This method is necessary because Solidity does not allow direct `string` comparison in memory.
        assert(
            keccak256(abi.encodePacked(basicNft.name())) ==
                keccak256(abi.encodePacked((NFT_NAME)))
        );
        assert(
            keccak256(abi.encodePacked(basicNft.symbol())) ==
                keccak256(abi.encodePacked((NFT_SYMBOL)))
        );
    }

    function testCanMintAndHaveABalance() public {
        vm.prank(USER);
        basicNft.mintNft(PUG_URI);

        assert(basicNft.balanceOf(USER) == 1);
    }

    function testTokenURIIsCorrect() public {
        vm.prank(USER);
        basicNft.mintNft(PUG_URI);

        assert(
            keccak256(abi.encodePacked(basicNft.tokenURI(0))) ==
                keccak256(abi.encodePacked(PUG_URI))
        );
    }
}
