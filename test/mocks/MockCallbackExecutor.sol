// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import { IOpenIntentCallback } from "../../src/interfaces/IOpenIntentCallback.sol";

contract MockCallbackExecutor is IOpenIntentCallback {
    event InputsFilled(bytes executionData);
    event ExecutorOutputFilled(bytes32 token, uint256 amount, bytes executionData);

    function outputFilled(bytes32 token, uint256 amount, bytes calldata executionData) external override {
        emit ExecutorOutputFilled(token, amount, executionData);
    }

    function inputsFilled(
        uint256[2][] calldata,
        /* inputs */
        bytes calldata executionData
    ) external override {
        emit InputsFilled(executionData);
    }
}
