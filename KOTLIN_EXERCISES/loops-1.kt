fun main() {
    var sum: Int = 0;

    for (i in 1..50) {
        if (i % 2 == 0) {
            sum += i
        }
    }

    println("The sum of the even numbers in the range 1-50: $sum")
}