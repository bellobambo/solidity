// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract BasicSolidity {
    // Data atypes
    string name = "bambo";
    bool isReady = false;
    uint age = 24;
    int balance = -10;
    address owner = 0x4e647b778363840fc68346bC3E0Bd5A6cd9D08b5;

    function localVariable() public pure returns (uint) {
        uint localAge = 100;
        return localAge;
    }

    string public publicName = "Solidity";

    string private privateName = "Solidity";

    string internal internalName = "Solidity";

    // Read Function
    function getName() public view returns (string memory) {
        return name;
    }

    // Write Function

    function setName(string memory newName) public {
        name = newName;
    }

    function publicFunction() public pure returns (string memory) {
        return "Public functions";
    }

    function privateFunction() internal pure returns (string memory) {
        return "Internal functions";
    }

 function externalFunction() external pure returns (string memory) {
    return "External functions";
}

function anotherExternalFunction() external pure returns (string memory) {
    return "Another external function"; // New name
}


    function pureFunction() public pure returns (bool) {
        return false;
    }

    function transferEther(address payable _to) public payable {
        _to.transfer(msg.value);
    }

modifier onlyOwner() {
    require(msg.sender == owner, "Only owner can call this function");
    _;
}

    function ownerSentName(string memory newName) public onlyOwner {
        name = newName;
    }

    // Run ONCES
    constructor() {
        name = "Solidity";
        owner = msg.sender;
    }

    function equal(uint a, uint b) public pure returns (bool) {
        return a == b;
    }

    function check(uint a) public pure returns (string memory) {
        if (a > 10) {
            return "Greater than 10";
        } else if (a < 10) {
            return "Less than 10";
        } else {
            return "Equal to 10";
        }
    }

    // mapping
    mapping(uint => string) public names;
    function addName(uint id, string memory _name) public {
        names[id] = _name;
    }
}

