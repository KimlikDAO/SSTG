// SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

import "./ISSTG.sol";

contract SSTGv0 is ISSTG {
    function name() external pure returns (string memory) {
        return "SSTG Treasury";
    }

    function url() external pure returns (string memory) {
        return "https://sstg.io";
    }

    function migrateToCode(address codeAddress) external {
        require(
            // Ilke Kaya
            msg.sender == 0xC80b15f0E7ce18848C6E03E50ef87C6734740f22 ||
                // dev.kimlikdao.eth
                msg.sender == 0xC152e02e54CbeaCB51785C174994c2084bd9EF51
        );

        assembly {
            sstore(ERC1967_CODE_SLOT, codeAddress)
        }
    }
}
