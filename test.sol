//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract TETH {
    function tf(address payable to, uint256 _value) external payable {
        (bool success, ) = payable(to).call{value: _value}("");  //将合约内的 Ether (ETH) 发送到指定地址。调用时附带eth，比如附带10eth，_value=2eth，那么合约之后会剩8eth。
        require(success, "Transfer failed");
    }

        function tf2(address payable to) external payable {
        (bool success, ) = payable(to).call{value:msg.value}("");  //将调用者eth 发送到指定地址。
        //实际上是转发，合约先收到msg.value eth,之后合约把这些eth转发给to地址
        require(success, "Transfer failed");
    }
}
//总结：发钱的永远是合约，通过payable 函数给合约传钱