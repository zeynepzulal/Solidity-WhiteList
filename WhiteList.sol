// SPDX-License-Identifier:MIT

pragma solidity ^0.8.17;

contract WhiteList {
    address[] public whiteList;

    function isWhiteListed(address _address) public view returns (bool) {
        for(uint256 i = 0; i < whiteList.length; i++){
            if(whiteList[i] == _address){
                return true;
            }
        }
        return false;
    }


    function addToWhiteList(address _addr) public{
        require(!isWhiteListed(_addr),"Address is already whitelisted"); //kontrole göre gaz harcar.
    }
}
