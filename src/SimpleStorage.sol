// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleStorage {
    uint256 myFavouriteNumber;

    struct Person {
        string name;
        uint256 favouriteNumber;
    }

    Person[] public listOfPersons;

    mapping(string => uint256) public nameToFavNumber;

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        listOfPersons.push(Person(_name, _favouriteNumber));
        nameToFavNumber[_name] = _favouriteNumber;
    }

    function store(uint256 _favouriteNunmber) public {
        myFavouriteNumber = _favouriteNunmber;
    }

    function retrieve() public view returns (uint256) {
        return myFavouriteNumber;
    }
}
