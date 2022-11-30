
/*Ejercicio 3
ver si una lista es subconjunto de otra
*/
object Main {
  def main(args: Array[String]): Unit = {
    if(List(1, 2, 8).forall(List(1, 2, 3, 4).contains)){
      print("es subconjunto")
    }else{
      print("no es subcojunto")
    }
  }
}
