val addr = scala.io.Source.fromURL("https://api.ipify.org").mkString
println(s"My public IP address is: $addr")
