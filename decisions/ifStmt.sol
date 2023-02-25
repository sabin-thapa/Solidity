// Solidity program to
// demonstrate the
// use of 'if statement'
pragma solidity ^0.8.0;

// Creating a contract
contract Types {

	// Declaring state variable
	uint i = 10;

	// Defining function to
	// demonstrate use of
	// 'if statement'
	function decision_making(
	) public returns(bool){
		if(i<10){
			return true;
		}
	}
	
}
