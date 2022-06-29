// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface ISSTG {
    function migrateToCode(address codeAddress) external;
}

address constant SSTG_V0 = 0xcCc0f01BE4A9c79A3450B29Cf55Af4d1F3836091;
address constant SSTG_PROXY = 0xcCc00BC7E6983b1901825888A7bB3bda3b051B12;
