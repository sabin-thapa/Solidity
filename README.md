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

### **First Application**

![image](https://user-images.githubusercontent.com/51270026/221340502-628fe8ca-d268-4436-b74c-10b30246bf9c.png)
![image](https://user-images.githubusercontent.com/51270026/221340512-ba8ed866-7944-4042-8910-a130897a50c7.png)

Result:
![image](https://user-images.githubusercontent.com/51270026/221340574-ab497ac2-0cf9-4148-83f7-c0dfbd25c1f6.png)

> We got the result: 3 which is true.

### Comments

- Anything between // or /\* \*/ is a comment and is ignored by Solidity compiler.

```
   // This is a comment.
   /* This is a
       multi-line comment
   */
```

### Types

- Boolean - bool: true/false
- Integer - int/unit: Signed and unsigned integers of varying sizes.
- Integer - int8 to int256: Signed int from 8 bits to 256 bits.
- Integer - uint8 to uint256: Unsigned int from 8 bits to 256 bits.

### Address

address holds the 20 byte value representing the size of an Ethereum address. An address can be used to get the balance using .balance method and can be used to transfer balance to another address using .transfer method.

```
    address x = 0x212;
    address Myaddress = this;
    if (x.balance < 10 && myAddress.balance >= 10_ x.transfer(10);

```

### Variables

Solidity supports three types of variables:

1. State variables (values permanently stored in a contract storage)
2. Local variables (values are present till function is executing)
3. Global variables (variables exist in the global namespace used to get information about the blockchain)

> Since solidity is a statically typed language, the state or local variable type needs to be specified during declaration. Each declared variable always have a default value based on its type.

### Scope of Variables

- Scope of local variables is limited to the function in which they are defined.
- Scope of state variables are of three types:
  1. Public: can be accessed internally as well as via messages.
  2. Internal: can be accessed only internally from the current contract or contract deriving from it without using this.
  3. Private: can be accessed only internally from the current contract they are defied not in the derived contrac from it.

<hr />

### Operators

- Following types of operators are supported:
  1. Arithmetic (+, -, \*, /, %, ++, --)
  2. Comparison (==, !=, >, <, >=. <=)
  3. Logical/Relational (&&, ||, !)
  4. Assignment ( = , +=, -=. \*=, /=, %=)
  5. Conditional/Ternary (?:)

### Loops

- Following loops are supported:
  1. while loop
  2. do ... while loop
  3. for loop

### Arrays

- Array is a data structure which stores a fixed size sequential collection of elements of the same type.
- In solidity, an array can be of compilt-time fixed size or of dynamic size.

**Declaring Arrays**

```
    type arrayName [arraySize];
    uint balace [10];
```

> For dynamic sized arrays:

```
    type [] arrayName;
```

### Enums

- Enums restrict a variable to have one of only few predefined values,
- The value in this enumerated list are called enums

**Syntax**

```
enum <enumerator_name> {element 1, elemeent 2, ... , element n}
```

### Structs

- Structs allows you to create more complicated data types that have multiple properties.
- They are useful for grouping together related data..

**Syntax**

```
struct <struct_name> {
  <data_type> var_1;
  <data_type> var_2;
}
```

![image](https://user-images.githubusercontent.com/51270026/221355069-94363766-5909-438d-bad2-551d8d9fd410.png)

### Conversions

- Solidity allows both implicit and explicit conversions.
- Solidity compiler allows implicit conversion between two data types provided no implicit conversion is possible and there is no loss of information.

1. Implicit Conversions

   a. uint() - converts an expression to an unsigned integer (uint)

   ```
     bytes memory b = 'Hello World';
     uint a = uint(b); //a is now 7210465
   ```

   b. int() - converts an expression to a signed integer (int).

   ```
     bytes memory b = “Hello World”;
     int a = int(b); // a is now 7210465
   ```

   c. address() - converts an expression to an address type.

   ```
     bytes memory b = “0x742d35Cc6634C0532925a3b844Bc454e4438f44e”;
     address a = address(b); // a is now 0x742d35Cc6634C0532925a3b844Bc454e4438f44e
   ```

   d. bytes() - converts an expression to a byte of arrays

   ```
     uint a = 10;
     bytes b = bytes(a); //b is now [0x0a]
   ```

   e. bool() - converts an expression to a boolean type.

   ```
     bytes memory b = “Hello World”;
     bool a = bool(b); // a is now true
   ```

2. Explicit Conversions

   a. Integer converted to smaller type

   - If an integer is converted to a smaller type then the higher-order bits are cut-off.

     ```
       uint32 a = 0x432178;
       uint16 b = uint16(a); // b will be 0x2178 now
     ```

     b.Integer converted to a larger type

   - If an integer is explicitly converted to a larger type, it is padded on the left.

     ```
       uint16 a = 0x4356;
       uint32 b = uint32(a); // b will be 0x00004356 now
     ```

### Style Guide: https://www.tutorialspoint.com/solidity/solidity_style_guide.htm

<hr />

### Functions

- A function is a block of code that can be re-used anywhere in the program.
- It saves the excessive use of memory and decreases runtime of the program.

**Declaration**

```
  function function_name(parameter_list) scope returns(return_type) {
     // block of code
    }
```
![image](https://user-images.githubusercontent.com/51270026/221356533-209aea59-6fba-41f5-9a05-415a1ece5ba8.png)

> Here, using pure in a function ensures that they will not modify the state of the function.

**Function Calling**
- A function can be invoked my simply writing the name of the function where it has to be called.

** Return Statements**
- Last statement of the function.
- Returns values from the function

![image](https://user-images.githubusercontent.com/51270026/221356911-2d4411f7-f5d7-4065-a56b-2579e45dc090.png)

