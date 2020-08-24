// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;

import "./ConvertLib.sol";



contract MetaCoin {
	mapping (address => uint) balances;

	event Transfer(address indexed _from, address indexed _to, uint256 _value);

   function  MetaCoin1() public {
		balances[msg.sender] = 10000;
	}

	function sendCoin(address receiver, uint amount) public returns(bool sufficient) {
		if (balances[msg.sender] < amount) return false;
		balances[msg.sender] -= amount;
		balances[receiver] += amount;
		
		return true;
	}

	function getBalanceInEth(address addr)public returns(uint){
		return ConvertLib.convert(getBalance(addr),2);
	}

	function getBalance(address addr) public returns(uint) {
		return balances[addr];
	}
}