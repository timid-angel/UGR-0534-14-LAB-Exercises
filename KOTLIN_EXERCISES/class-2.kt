class Triangle(var side1: Double, var side2: Double, var side3: Double) {
    fun getType(): String {
        if (side1 == side2 && side2 == side3) {
            return "Equilateral"
        } else if (side1 == side2 || side2 == side3 || side1 == side3) {
            return "Isosceles"
        } else {
            return "Scalen"
        }
    }   
}

fun main() {
    var tri: Triangle = Triangle(5.0, 2.0, 2.0)
    println("The triangle is: ${tri.getType()}")
}