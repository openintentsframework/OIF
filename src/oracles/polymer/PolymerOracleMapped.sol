// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import { ChainMap } from "../ChainMap.sol";
import { PolymerOracle } from "./PolymerOracle.sol";

/**
 * @notice Polymer Oracle with mapped chainIds
 */
contract PolymerOracleMapped is ChainMap, PolymerOracle {
    constructor(address _owner, address crossL2Prover) ChainMap(_owner) PolymerOracle(crossL2Prover) { }

    function _getChainId(
        uint256 protocolId
    ) internal view override(ChainMap, PolymerOracle) returns (uint256 chainId) {
        chainId = ChainMap._getChainId(protocolId);
    }
}
