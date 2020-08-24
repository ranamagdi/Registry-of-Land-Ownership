// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;

library ConvertLib{
	function convert(uint amount,uint conversionRate) public  returns (uint convertedAmount) 
	{
		return amount * conversionRate;
	}
}