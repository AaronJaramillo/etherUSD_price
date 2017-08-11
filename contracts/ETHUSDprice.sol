pragma solidity ^0.4.0;
//Testnet Oracle
contract oraclize {
    uint256 public baseprice;
}
contract ETHUSDprice is oraclize {
	uint256 public ETHUSDprice;
	oraclize Oracle = oraclize(0xCBf1735Aad8C4B337903cD44b419eFE6538aaB40);


	function ETHUSDprice() {
		ETHUSDprice = Oracle.baseprice() * 10000;
	}
	function getETHUSD() 
	external
	returns (uint256)
	{
		ETHUSDprice = Oracle.baseprice() * 10000;
		return ETHUSDprice;
	}
}