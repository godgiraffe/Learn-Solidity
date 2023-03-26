// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Struct{
    struct Car{
        string model;
        uint year;
        address owner;
    }

    Car public car;
    Car[] public cars;
    // [key] = value 的結構
    // 一個地址可以有很多台車，所以是 1對多
    mapping(address => Car[]) public carsByOwner;

    function structUsage() external{
        // 將資料放入 Struct 結構的三種方法
        // 這種方法，必須按照一開始定義 Car 屬性的順序，來填入資料 (model → year → owner)
        Car memory toyota = Car("Toyota", 1990, msg.sender);
        // 這種方法，因為有指定哪個屬性要放什麼值，所以不用照順序放
        Car memory lambo = Car({year: 1980, model: "Lamborghini", owner: msg.sender});
        // 這種方法，不用一次就把所有的值填完
        Car memory tesla;
        tesla.year = 2010;
        tesla.model = "Tesla";
        tesla.owner = msg.sender;


        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);

        cars.push(Car("Ferrari", 2020, msg.sender));

        // memory: 將該變數儲存至記憶體中，當該函數執行完後，該變數就會消失囉！
        // storage: 將該變數儲存至 
        Car storage _car = cars[0];
        _car.year = 1999;
        delete _car.owner;
        delete cars[1];
    }

}