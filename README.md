<h1> 7 Bit Hamming code </h1>
<h2> This code is FPGA Synthesisable and implemented on Artix-7 FPGA.</h2> 
<br> Hamming code is a set of error-correction codes that can be used to detect and correct the errors that can occur when the data is moved or stored from the sender to the receiver. 
<br> It is a technique developed by R.W. Hamming for error correction. 
<br> Redundant bits – Redundant bits are extra binary bits that are generated and added to the information-carrying bits of data transfer to ensure that no bits were lost during the data transfer. 
<br> The number of redundant bits can be calculated using the following formula:

<br> 2^r ≥ m + r + 1 
<br> where, r = redundant bit, m = data bit
<br> Suppose the number of data bits is 7, then the number of redundant bits can be calculated using: = 2^4 ≥ 7 + 4 + 1 
<br> Thus, the number of redundant bits= 4 Parity bits.  
<br> A parity bit is a bit appended to a data of binary bits to ensure that the total number of 1’s in the data is even or odd. 
<br> Parity bits are used for error detection. There are two types of parity bits:

<br> <h2> Even parity bit:</h2> 
<br> In the case of even parity, for a given set of bits, the number of 1’s are counted. 
<br> If that count is odd, the parity bit value is set to 1, making the total count of occurrences of 1’s an even number. 
<br> If the total number of 1’s in a given set of bits is already even, the parity bit’s value is 0.

<br> <h2> Odd Parity bit </h2>
<br> In the case of odd parity, for a given set of bits, the number of 1’s are counted. 
<br> If that count is even, the parity bit value is set to 1, making the total count of occurrences of 1’s an odd number. 
<br> If the total number of 1’s in a given set of bits is already odd, the parity bit’s value is 0. 
