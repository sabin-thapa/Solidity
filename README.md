# Solidity
## Basic Overview
**What is Solidity?** 
- Contract-oriented, static-typed high level programming language.
- Used for implementing smart contracts.
- Highly influenced by C++, Python and JS.
- Designed to target the Ethereum Virtual Machine.
> EVMs are run-time environments for running contract code in th Ethereum platform.

**What is Ethereum?**
- Decentralized blockchain platform that runs smart contracts.
- Establishes a peer-to-peer network that securely executes and verifies aplication code, called smart contracts.
> Smart contracts allow participants to transact with wach other without a trusted central authority.

**What is Smart Contract?**
- A computer protocol intented to digitally facilitate, verify, or enforce the negotiation or performance of a contract.
- Programs stored in a blockchain that run when predetermined conditions are met.
- Self-executing program that automates the actions required in an agreement or contract.

**What is EVM?**
- Runtime environment for smart contracts in Ethereum.
- Focuses on providing security and executing untrusted code by computers all over the world.
- Computational engine which acts like a decentralized computer that has millions of executable projects.
- Virtual computer used by developers to create decentralized applications.
<hr />

## Environment Setup using npm/Node.js
1. Install Node.js and node package manager npm

    ![image](https://user-images.githubusercontent.com/51270026/219952717-108a80f0-9900-4a3d-92ff-3f2959fa6e14.png)

2. Install Solidity Compiler - solc

    ![image](https://user-images.githubusercontent.com/51270026/219952857-7fb62263-234a-490b-83b2-74b1e62e1366.png)
 <hr />  
 
### **Basic Syntax**
A Solidity source files can contain an any number of contract definitions, import directives and pragma directives.
```
    pragma solidity >=0.4.0 <0.6.0;
    contract SimpleStorage {
        unit storedData;
        function set(uint x) public {
            storedData = x;
        }
        function get() public view returns (uint( {
            return storedData;
        }
    }
```
**Pragma**: 
- The first line is a pragma directive which tells that the source code is written for Solidity version 0.4.0 or anything newever that does not break functionality upto, but not including, version 0.6.0.
- A pragma directive is alwaus local to a source file and if you import another file, the pragma from that file will not automatically apply to the importing file.

**Contract**:
- A Solidity contract is a collection of code (its functions) and data (its state) that resides at a specific address on the Ethereum blockchain.
- The line uintstoredData declares a state variable called storedData of type uint and the functions set and get can be used to modify or retrieve the value of the variable.
<hr />
