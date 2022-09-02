contract Assignment {
    function power(uint y, uint x) public pure returns (uint){
         return y**x;
    }
}



function task2(uint num) public pure returns (uint){
     uint256 reverse = 0;
        uint256 remainder;
        uint256 original;

        original = num;
        while (num != 0) {
            remainder = num % 10;
            reverse = reverse * 10 + remainder;
          num /= 10;
        }
        if (original == reverse) {
            return 1; //palindrome
        } else {
            return 0; //not palindrome
        }
}
