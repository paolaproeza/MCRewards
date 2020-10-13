pragma solidity ^0.5.0;

contract Mctinder {
	address[16] public ajudantes;
	
	// Ajudando o colega
	function ajuda(uint colId) public returns (uint) {
		require(colId >= 0 && colId <= 15);

		ajudantes[colId] = msg.sender;

		return colId;
	}

	// Recuperando os ajudantes
	function getAjudantes() public view returns (address[16] memory) {
	  return ajudantes;
	}
}