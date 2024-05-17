class Rectangle(var length: Double, var width: Double) {
    fun getPerimeter(): Double {
        return 2 * (length + width)
    }

    fun getArea(): Double {
        return length * width
    }
}

fun main() {
    var rect: Rectangle = Rectangle(length=10.0, width=20.0)

    println("Perimeter: ${rect.getPerimeter()}")
    println("Area: ${rect.getArea()}")
}