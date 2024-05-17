fun main() {
    val side1: Int = 2
    val side2: Int = 2
    val side3: Int = 2

    if (side1 == side2 && side2 == side3) {
        println("The triangle is Equilateral")
    } else if (side1 == side2 || side2 == side3 || side1 == side3) {
        println("The triangle is Isosceles")
    } else {
        println("The triangle is scalen")
    }
}