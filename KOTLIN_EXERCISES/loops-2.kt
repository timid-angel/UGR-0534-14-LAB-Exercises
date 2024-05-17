fun main() {
    val start: Int = 5
    val end: Int = 79

    var curr = start

    while (curr <= end) {
        var isPrime: Boolean = true

        for (i in 2..(curr-1)) {
            if (curr % i == 0) {
                isPrime = false
                break
            }
        }

        if (isPrime) {
            println("$curr is prime")
        }

        curr += 1
    }
}