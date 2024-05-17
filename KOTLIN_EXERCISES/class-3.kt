class ShoppingItem(var name: String, var price: Double)

class ShoppingCart { 
    var cart: MutableList<ShoppingItem> = mutableListOf()

    fun addItem(item: ShoppingItem) {
        cart.add(item)
    }

    fun removeItem(name: String) {
        cart = cart.filter { i-> i.name != name} as MutableList<ShoppingItem>
    }

    fun getTotalPrice(): Double {
        var total: Double = 0.0
        for (item in cart) {
            total += item.price
        }

        return total
    }
}

fun main() {
    val item1 = ShoppingItem("item1", 10.0)
    val item2 = ShoppingItem("item2", 20.0)
    val item3 = ShoppingItem("item3", 30.0)

    val shoppingCart = ShoppingCart()
    shoppingCart.addItem(item1)
    shoppingCart.addItem(item2)
    shoppingCart.addItem(item3)

    println("${shoppingCart.getTotalPrice()}")
    shoppingCart.removeItem("item2")
    println("${shoppingCart.getTotalPrice()}")
}