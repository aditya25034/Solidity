// SPDX-License-Identifier: MIT
pragma solidity 0.8.19; //Stating our version

contract SimpleStorage{
    //Favouurite Number will be initialized to zero if no value is given.
    uint public myFavouriteNumber;

    function store(uint256 _FavouriteNumber) public{
        myFavouriteNumber = _FavouriteNumber;
    }

    function retreive() public view returns(uint256){
        return myFavouriteNumber;
    }

    struct Person{
        uint256 FavouriteNumber;
        string Name;
    }

    Person[] public listofpeople;

    function addperson(string memory _name,uint256 _favouriteNumber) public{
        listofpeople.push(Person(_favouriteNumber,_name));
    }

    // Person public Aditya = Person(54,"Aditya");

}
