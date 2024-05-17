fun checkUnique(s: String): Boolean {
    var set: MutableSet<Char> = mutableSetOf()

    for (c in s) {
        if (set.contains(c)) {
            return false
        }
        set.add(c)
    }

    return true
}

fun main() {
    var unique: String = "abcde"
    var notunique: String = "abacdc"

    println("Unique: ${checkUnique(unique)}")
    println("Non-unique: ${checkUnique(notunique)}")
}