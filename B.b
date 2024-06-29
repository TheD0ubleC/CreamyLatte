main()
{
    auto waterBase, instantCoffeeBase, condensedMilkBase, fullCreamEvaporatedMilkBase, freshMilkBase, totalVolume, ratio;
    waterBase = 150.0;
    instantCoffeeBase = 8.0;
    condensedMilkBase = 7.0;
    fullCreamEvaporatedMilkBase = 100.0;
    freshMilkBase = 85.0;

    totalVolume = 500.0;
    ratio = totalVolume / 350.0;

    printf("配方 for %f ml 厚拿铁:\n", totalVolume);
    printf("水: %f 克\n", waterBase * ratio);
    printf("速溶咖啡: %f 克\n", instantCoffeeBase * ratio);
    printf("炼乳: %f 克\n", condensedMilkBase * ratio);
    printf("全脂淡奶: %f 克\n", fullCreamEvaporatedMilkBase * ratio);
    printf("鲜奶: %f 克\n", freshMilkBase * ratio);
}
