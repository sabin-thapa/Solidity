// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;
/// @title A contract for demonstrate function declaration
/// @author Sabin Thapa
/// @notice For now, this contract just show how to calculate the sum of two numbers
contract Test {
	// Defining a function to calculate sum of two numbers
	function add() public pure returns(uint){
		uint num1 = 10;
		uint num2 = 16;
		uint sum = num1 + num2;
		return sum;
	}
}
