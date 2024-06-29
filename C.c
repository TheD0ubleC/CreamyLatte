#include <stdio.h>
#include <string.h>

void CreamyLatte(double totalVolume, const char* language) {
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

    if (strcmp(language, "CN") == 0) {
        printf("配方 for %.0f ml 厚拿铁:\n", totalVolume);
    } else if (strcmp(language, "EN") == 0) {
        printf("Recipe for %.0f ml Creamy Latte:\n", totalVolume);
    } else if (strcmp(language, "JP") == 0) {
        printf("%.0f mlのクリーミーラテのレシピ:\n", totalVolume);
    } else if (strcmp(language, "KR") == 0) {
        printf("%.0f ml 크리미 라떼 레시피:\n", totalVolume);
    } else {
        printf("Recipe for %.0f ml Creamy Latte:\n", totalVolume);
    }

    printf("水: %.2f 克\n", water);
    printf("速溶咖啡: %.2f 克\n", instantCoffee);
    printf("炼乳: %.2f 克\n", condensedMilk);
    printf("全脂淡奶: %.2f 克\n", fullCreamEvaporatedMilk);
    printf("鲜奶: %.2f 克\n", freshMilk);
}

int main() {
    CreamyLatte(500, "CN");
    return 0;
}
