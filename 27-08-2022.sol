
//////// finding Prime number 

contract PrimeNumber {
    function find(uint n) public pure returns(uint,string memory){
    
        for (uint i =2; i < n ;i++){
            if (n % i == 0) {
                return (n,"is not a  Prime Number"); //not prime
            }
    }
    return (n,"is Prime Number");
    }
}
