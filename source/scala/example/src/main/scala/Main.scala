import java.nio.file.Paths

object Main extends App {
  println("\n\n")
  println("Hello world! Current working directory is :" + Paths.get(".").toAbsolutePath)
  println("\n\n")
}
