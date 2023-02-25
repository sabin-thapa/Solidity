pragma solidity ^0.5.0;
//StateVariable
contract SolidityTest {
  unit storedData; //state var
  constructor() public {
    storedData = 10; //Using state var
  }
  
  function getResult() public view returns(unit) {
    uint a = 1; //local var
    unit b = 2;
    unit result = a + b;
    return result; //assessing local var
  }
}
