fun main() {
    val hoursWorked: Double = 36.4
    val hourlyRate: Double = 42.2
    val overtimeHours: Double = 6.2
    val overtimeRates = 56.4

    val totalSalary: Double = (hoursWorked * hourlyRate) + (overtimeHours * overtimeRates)

    println("The salary for the given employee is ${totalSalary}")
}