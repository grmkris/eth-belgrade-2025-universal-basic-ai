// SPDX-License-Identifier: Apache-2.0

pragma solidity ^0.8.0;

import {sha512, sha512_256, sha384} from "../Sapphire.sol";
import {hmac_sha512_256} from "../hmac_sha512_256.sol";

contract HashTests {
    function testSHA512(bytes memory data)
        external
        view
        returns (bytes memory)
    {
        return sha512(data);
    }

    function testSHA384(bytes memory data)
        external
        view
        returns (bytes memory)
    {
        return sha384(data);
    }

    function testSHA512_256(bytes memory data) external view returns (bytes32) {
        return sha512_256(data);
    }

    function testHMAC_SHA512_256(bytes memory key, bytes memory data)
        external
        view
        returns (bytes32)
    {
        return hmac_sha512_256(key, data);
    }
}
