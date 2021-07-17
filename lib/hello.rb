def hello
  "hello"
end


p File.join(File.dirname(__FILE__), "../lib/**/*.rb")
p Dir["lib/**/*.rb"]
p Dir[File.join(File.dirname(__FILE__), "../lib/**/*.rb")]