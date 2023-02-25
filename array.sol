pragma solidity ^0.8.0;

contract Array {
    uint[6] data;

    function addData() public returns( int[5] memory, uint[6] memory) {
        int[5] memory data1 = [int(50), -63, 77, -28, 90];
        data = [uint(10), 20, 30, 40, 50, 60];
        return (data1, data);
    }
}