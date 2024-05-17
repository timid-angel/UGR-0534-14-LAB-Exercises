fun checkPalindrome(s: String): Boolean {
    if (s.length <= 1) {
        return true
    }

    var i: Int = 0
    var j: Int = s.length - 1

    while (i < j) {
        if (i == j) {
            return true
        }

        if (s[i] != s[j]) {
            return false
        }

        i++
        j--
    }

    return true
}

fun main() {
    val palindrome: String = "abcddcba"
    val notpalindrome: String = "absdfasdfmxz"
    
    println("Palindrome: ${checkPalindrome(palindrome)}")
    println("Non-palindrome: ${checkPalindrome(notpalindrome)}")
}