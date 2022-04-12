
func fibonacci(n: Int) -> Array<Int>{
   
   var fibonacciSequence: [Int] = []
   
   // Range is to be cut off by one as the range starts at 0.
   let range = 0...n-1
   
   for i in range{
       
       if fibonacciSequence.count < 2 {
           // The first two numbers are always 0 and 1.
           // These are thus appeneded automatically.
           fibonacciSequence.append(i)
        
       }
       else
       {
           
           // For every number after the initial two,
           // the previous two number should be added together
           // this is the product of the Fibonnaci Sequence
           let numberOne = fibonacciSequence[i-1]
           let numberTwo = fibonacciSequence[i-2]
           let fibonacciProduct = numberOne + numberTwo
           
           fibonacciSequence.append(fibonacciProduct)
           
       }
       
   }
   
  return fibonacciSequence
}
