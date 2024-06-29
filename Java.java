public class DrinkRecipe {
    private static double waterBase = 150;
    private static double instantCoffeeBase = 8;
    private static double condensedMilkBase = 7;
    private static double fullCreamEvaporatedMilkBase = 100;
    private static double freshMilkBase = 85;

    public static void CreamyLatte(double totalVolume, String language) {
        double ratio = totalVolume / 350.0;
        String result;

        switch (language) {
            case "CN":
                result = "配方 for " + totalVolume + " ml 厚拿铁:";
                break;
            case "EN":
                result = "Recipe for " + totalVolume + " ml Creamy Latte:";
                break;
            case "JP":
                result = totalVolume + " mlのクリーミーラテのレシピ:";
                break;
            case "KR":
                result = totalVolume + " ml 크리미 라떼 레시피:";
                break;
            default:
                result = "Recipe for " + totalVolume + " ml Creamy Latte:";
                break;
        }

        System.out.println(result);
        System.out.println("水: " + (waterBase * ratio) + " 克");
        System.out.println("速溶咖啡: " + (instantCoffeeBase * ratio) + " 克");
        System.out.println("炼乳: " + (condensedMilkBase * ratio) + " 克");
        System.out.println("全脂淡奶: " + (fullCreamEvaporatedMilkBase * ratio) + " 克");
        System.out.println("鲜奶: " + (freshMilkBase * ratio) + " 克");
    }

    public static void main(String[] args) {
        CreamyLatte(500, "CN");
    }
}
