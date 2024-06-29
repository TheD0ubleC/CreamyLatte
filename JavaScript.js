function CreamyLatte(totalVolume, language) {
    const waterRatio = 150 / 350;
    const instantCoffeeRatio = 8 / 350;
    const condensedMilkRatio = 7 / 350;
    const fullCreamEvaporatedMilkRatio = 100 / 350;
    const freshMilkRatio = 85 / 350;

    const water = waterRatio * totalVolume;
    const instantCoffee = instantCoffeeRatio * totalVolume;
    const condensedMilk = condensedMilkRatio * totalVolume;
    const fullCreamEvaporatedMilk = fullCreamEvaporatedMilkRatio * totalVolume;
    const freshMilk = freshMilkRatio * totalVolume;

    let result;
    switch (language) {
        case "CN":
            result = `配方 for ${totalVolume} ml 厚拿铁:`;
            break;
        case "EN":
            result = `Recipe for ${totalVolume} ml Creamy Latte:`;
            break;
        case "JP":
            result = `${totalVolume} mlのクリーミーラテのレシピ:`;
            break;
        case "KR":
            result = `${totalVolume} ml 크리미 라떼 레시피:`;
            break;
        default:
            result = `Recipe for ${totalVolume} ml Creamy Latte:`;
            break;
    }

    console.log(result);
    console.log(`水: ${water} 克`);
    console.log(`速溶咖啡: ${instantCoffee} 克`);
    console.log(`炼乳: ${condensedMilk} 克`);
    console.log(`全脂淡奶: ${fullCreamEvaporatedMilk} 克`);
    console.log(`鲜奶: ${freshMilk} 克`);
}

const totalVolume = 500;
CreamyLatte(totalVolume, "CN");
