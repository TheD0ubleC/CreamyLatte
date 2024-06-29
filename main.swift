func creamyLatte(totalVolume: Double, language: String) {
    let waterBase = 150.0
    let instantCoffeeBase = 8.0
    let condensedMilkBase = 7.0
    let fullCreamEvaporatedMilkBase = 100.0
    let freshMilkBase = 85.0

    let ratio = totalVolume / 350.0
    let result: String

    switch language {
    case "CN":
        result = "配方 for \(totalVolume) ml 厚拿铁:"
    case "EN":
        result = "Recipe for \(totalVolume) ml Creamy Latte:"
    case "JP":
        result = "\(totalVolume) mlのクリーミーラテのレシピ:"
    case "KR":
        result = "\(totalVolume) ml 크리미 라떼 레시피:"
    default:
        result = "Recipe for \(totalVolume) ml Creamy Latte:"
    }

    print(result)
    print("水: \(String(format: "%.2f", waterBase * ratio)) 克")
    print("速溶咖啡: \(String(format: "%.2f", instantCoffeeBase * ratio)) 克")
    print("炼乳: \(String(format: "%.2f", condensedMilkBase * ratio)) 克")
    print("全脂淡奶: \(String(format: "%.2f", fullCreamEvaporatedMilkBase * ratio)) 克")
    print("鲜奶: \(String(format: "%.2f", freshMilkBase * ratio)) 克")
}

creamyLatte(totalVolume: 500.0, language: "CN")
