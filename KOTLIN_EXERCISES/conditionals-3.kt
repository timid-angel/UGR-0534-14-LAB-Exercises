fun main() {
    val month: Int = 12
    val day: Int = 25

    if ((month > 3 && month < 5) || (month == 3 && day >= 21) || (month == 5 && day <= 21)) {
        println("The current season is spring")
    } else if ((month > 6 && month < 9) || (month == 6 && day >= 21) || (month == 9 && day <= 21)) {
        println("The current season is summer")
    } else if ((month > 10 && month < 12) || (month == 10 && day >= 21) || (month == 12 && day <= 21)) {
        println("The current season is autumn")
    } else {
        println("The current season is winter")
    }
}