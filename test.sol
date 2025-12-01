//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract TETH {
    function tf(address payable to, uint256 _value) external payable {
        (bool success, ) = payable(to).call{value: _value}("");  //将合约内的 Ether (ETH) 发送到指定地址。
        require(success, "Transfer failed");
    }

        function tf2(address payable to) external payable {
        (bool success, ) = payable(to).call{value:msg.value}("");  //将调用者eth 发送到指定地址。
        require(success, "Transfer failed");
    }
}