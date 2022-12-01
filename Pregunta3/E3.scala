/*
Ejercicio 3
ver si una lista es subconjunto de otra
scala
*/
object Main {
  def subconj(l1:List[Int], l2:List[Int]): Unit ={
    if(l1.forall(l2.contains)){
      print("es subconjunto")
    }else{
      print("no es subcojunto")
    }
  }
  
  def main(args: Array[String]): Unit = {
    var l1 = List(1,5,8,7)
    var l2 = List(1,5,2,8,6,7,4)
    subconj(l1, l2)
  }
}
