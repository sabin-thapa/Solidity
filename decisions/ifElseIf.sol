// Solidity program to
// demonstrate the use
// of 'if-else if-else statement'
pragma solidity ^0.8.0;

// Creating a contract
contract Types {

	// Declaring state variables
	uint i = 10;
	string result;

	// Defining function to
	// demonstrate the use
	// of 'if...else if...else
	// statement'
	function decision_making(
	) public returns(string memory){
		if(i<10){
			result = "less than 10";
		}
		else if(i == 10){
			result = "equal to 10";
		}
		else{
			result = "greater than 10";
		}
		return result;
	}
	
}
