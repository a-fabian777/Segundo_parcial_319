/*
Ejericicio 1
scala
*/
object Main {
  // Fibonnaci base 3 forma estructurada
  def fiboEst(n:Int): Int = {
    var f = 0
    var a = -1
    var b = 1
    var c = 0
    for(w <- 0 to n){
      f = a + b + c
      a = b
      b = c
      c = f
      print(f)
      print(" ")
    }
    return 0
  }

  // Fibonnaci base 3 forma recursiva
  def fiboRec(n:Int): Int = {
      if(n >= 0) {
        fiboRec(n-1)
        print(fibo(n))
        print(" ")
      }
      return 0
  }

  def fibo(n:Int): Int = {
    if (n == 0) 
        return 0
    else if( n == 1 || n == 2)
        return 1
    else
        return fibo(n-1) + fibo(n-2) + fibo(n-3)
  }


  def main(args:Array[String]):Unit = {
      println("Generar los n terminos:")
      var n = scala.io.StdIn.readInt()
      println("Fibonnaci base 3 forma estructurada")
      fiboEst(n)
      println("\nFibonnaci base 3 forma recursiva")
      fiboRec(n)
  }
}
