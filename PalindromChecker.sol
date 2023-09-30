// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

contract PalindromeChecker {
    function checkPalindrome(string calldata _word) public pure returns(bool isPalindrome) {
        bytes memory stringBytes = bytes(_word);

        uint left = 0;
        uint right = stringBytes.length - 1;

        while(left < right) {
            if(stringBytes[left] != stringBytes[right]) return false;
            left++;
            right--;
        }
        isPalindrome = true;
    }
}