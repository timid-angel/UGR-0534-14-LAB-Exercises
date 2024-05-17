fun sortArr(arr: MutableList<Int>) {
    arr.sort()
}

fun main() {
    var intArr: MutableList<Int> = mutableListOf(5,8,7,1,2,7);
    sortArr(intArr)
    for (i in intArr) {
        println(i)
    }
}