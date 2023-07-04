// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AssertionExample {

    uint256 public value;

    function setValue(uint256 _newValue) public {

        require(_newValue > 0, "Value must be greater than zero");

        assert(_newValue != value);

        value = _newValue;
    }

    function getValue() public view returns (uint256) {
        return value;
    }

    function doRevert() public pure {
        revert("This transaction was reverted");
    }
}
