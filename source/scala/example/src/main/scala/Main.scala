import java.nio.file.Paths

// import org.apache.spark.SparkContext

object Main extends App {

  def test() : Unit = {
    println("thi sis test")
  }

  println("\n\n")
  println("Hello world! Current working directory is :" + Paths.get(".").toAbsolutePath)
  println("\n\n")
  test()

}

