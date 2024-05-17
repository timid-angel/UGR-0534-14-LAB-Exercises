fun main() {
    val num1: Int = 5
    val num2: Int = 7
    val num3: Int = 3

    if (num1 > num2) {
        if (num3 > num1) {
            println("The maximum value is $num3")
        } else {
            println("The maximum value is $num1")
        }
    } else {
        if (num3 > num2) {
            println("The maximum value is $num3")
        } else {
            println("The maximum value is $num2")
        }
    }
}