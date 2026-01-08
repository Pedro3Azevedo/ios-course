struct Dog{
    var name: String
    var age: Int
    var furColor: String
    
    init(name: String, age: Int, furColor: String){
        self.name = name
        self.age = age
        self.furColor = furColor
    }
}

var myDog = Dog(name: "Max", age: 10, furColor: "white")

print(myDog.name)
