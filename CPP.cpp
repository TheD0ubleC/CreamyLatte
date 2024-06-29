#include <iostream>
#include <string>

void CreamyLatte(double totalVolume, const std::string& language) {
    double waterRatio = 150.0 / 350.0;
    double instantCoffeeRatio = 8.0 / 350.0;
    double condensedMilkRatio = 7.0 / 350.0;
    double fullCreamEvaporatedMilkRatio = 100.0 / 350.0;
    double freshMilkRatio = 85.0 / 350.0;

    double water = waterRatio * totalVolume;
    double instantCoffee = instantCoffeeRatio * totalVolume;
    double condensedMilk = condensedMilkRatio * totalVolume;
    double fullCreamEvaporatedMilk = fullCreamEvaporatedMilkRatio * totalVolume;
    double freshMilk = freshMilkRatio * totalVolume;

    std::string result;
    if (language == "CN") {
        result = "配方 for " + std::to_string(totalVolume) + " ml 厚拿铁:";
    } else if (language == "EN") {
        result = "Recipe for " + std::to_string(totalVolume) + " ml Creamy Latte:";
    } else if (language == "JP") {
        result = std::to_string(totalVolume) + " mlのクリーミーラテのレシピ:";
    } else if (language == "KR") {
        result = std::to_string(totalVolume) + " ml 크리미 라떼 레시피:";
    } else {
        result = "Recipe for " + std::to_string(totalVolume) + " ml Creamy Latte:";
    }

    std::cout << result << std::endl;
    std::cout << "水: " << water << " 克" << std::endl;
    std::cout << "速溶咖啡: " << instantCoffee << " 克" << std::endl;
    std::cout << "炼乳: " << condensedMilk << " 克" << std::endl;
    std::cout << "全脂淡奶: " << fullCreamEvaporatedMilk << " 克" << std::endl;
    std::cout << "鲜奶: " << freshMilk << " 克" << std::endl;
}

int main() {
    CreamyLatte(500, "CN");
    return 0;
}
