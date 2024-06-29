function CreamyLatte(totalVolume, language)
    local waterRatio = 150 / 350
    local instantCoffeeRatio = 8 / 350
    local condensedMilkRatio = 7 / 350
    local fullCreamEvaporatedMilkRatio = 100 / 350
    local freshMilkRatio = 85 / 350

    local water = waterRatio * totalVolume
    local instantCoffee = instantCoffeeRatio * totalVolume
    local condensedMilk = condensedMilkRatio * totalVolume
    local fullCreamEvaporatedMilk = fullCreamEvaporatedMilkRatio * totalVolume
    local freshMilk = freshMilkRatio * totalVolume

    local result
    if language == "CN" then
        result = string.format("配方 for %d ml 厚拿铁:", totalVolume)
    elseif language == "EN" then
        result = string.format("Recipe for %d ml Creamy Latte:", totalVolume)
    elseif language == "JP" then
        result = string.format("%d mlのクリーミーラテのレシピ:", totalVolume)
    elseif language == "KR" then
        result = string.format("%d ml 크리미 라떼 레시피:", totalVolume)
    else
        result = string.format("Recipe for %d ml Creamy Latte:", totalVolume)
    end

    print(result)
    print(string.format("水: %.2f 克", water))
    print(string.format("速溶咖啡: %.2f 克", instantCoffee))
    print(string.format("炼乳: %.2f 克", condensedMilk))
    print(string.format("全脂淡奶: %.2f 克", fullCreamEvaporatedMilk))
    print(string.format("鲜奶: %.2f 克", freshMilk))
end

local totalVolume = 500
CreamyLatte(totalVolume, "CN")
