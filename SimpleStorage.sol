// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage {
    
  // This will get initialized to 0!
    uint256 favouritenumber;
    
    struct People {
        uint256 favouritenumber;
        string name;
    }
 
       
People[] public people;
mapping(string => uint256) public nameToFavouriteNumber;

function store(uint256 _favouritenumber) public {
    favouritenumber = _favouritenumber;
}

function retrieve() public view returns(uint256) {
    return favouritenumber;
}

function addPerson(string memory _name, uint256 _favouritenumber) public{
    people.push(People(_favouritenumber, _name));
    nameToFavouriteNumber[_name] = _favouritenumber;
    
}

}
