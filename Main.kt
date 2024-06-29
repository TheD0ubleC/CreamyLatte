fun creamyLatte(totalVolume: Double, language: String) {
    val waterBase = 150.0
    val instantCoffeeBase = 8.0
    val condensedMilkBase = 7.0
    val fullCreamEvaporatedMilkBase = 100.0
    val freshMilkBase = 85.0

    val ratio = totalVolume / 350.0
    val result = when (language) {
        "CN" -> "配方 for $totalVolume ml 厚拿铁:"
        "EN" -> "Recipe for $totalVolume ml Creamy Latte:"
        "JP" -> "$totalVolume mlのクリーミーラテのレシピ:"
        "KR" -> "$totalVolume ml 크리미 라떼 레시피:"
        else -> "Recipe for $totalVolume ml Creamy Latte:"
    }

    println(result)
    println("水: ${"%.2f".format(waterBase * ratio)} 克")
    println("速溶咖啡: ${"%.2f".format(instantCoffeeBase * ratio)} 克")
    println("炼乳: ${"%.2f".format(condensedMilkBase * ratio)} 克")
    println("全脂淡奶: ${"%.2f".format(fullCreamEvaporatedMilkBase * ratio)} 克")
    println("鲜奶: ${"%.2f".format(freshMilkBase * ratio)} 克")
}

fun main() {
    creamyLatte(500.0, "CN")
}
