package unit4

object Main extends App
{

  val numbers = List(1, 2, 3, 4, 5)
  println("2 exists in [1, 2, 3, 4, 5]: " + member(2, numbers))
  println("7 exists in [1, 2, 3, 4, 5]: " + member(7, numbers))

  def member(e: Any, lizt: List[Any]): String = {
    if (lizt.isEmpty)
      "false"
    else if (e.==(lizt.head))
      "true"
    else
      member (e, lizt.drop(1)) // Drop the first element
  }
}