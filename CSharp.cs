using System;

public class DrinkRecipe
{
    private double waterBase = 150;
    private double instantCoffeeBase = 8;
    private double condensedMilkBase = 7;
    private double fullCreamEvaporatedMilkBase = 100;
    private double freshMilkBase = 85;

    public void CreamyLatte(double totalVolume, string language)
    {
        double ratio = totalVolume / 350.0;
        string result;

        switch (language)
        {
            case "CN":
                result = $"配方 for {totalVolume} ml 厚拿铁:";
                break;
            case "EN":
                result = $"Recipe for {totalVolume} ml Creamy Latte:";
                break;
            case "JP":
                result = $"{totalVolume} mlのクリーミーラテのレシピ:";
                break;
            case "KR":
                result = $"{totalVolume} ml 크리미 라떼 레시피:";
                break;
            default:
                result = $"Recipe for {totalVolume} ml Creamy Latte:";
                break;
        }

        Console.WriteLine(result);
        Console.WriteLine($"水: {waterBase * ratio} 克");
        Console.WriteLine($"速溶咖啡: {instantCoffeeBase * ratio} 克");
        Console.WriteLine($"炼乳: {condensedMilkBase * ratio} 克");
        Console.WriteLine($"全脂淡奶: {fullCreamEvaporatedMilkBase * ratio} 克");
        Console.WriteLine($"鲜奶: {freshMilkBase * ratio} 克");
    }
}

class Program
{
    static void Main(string[] args)
    {
        DrinkRecipe myDrink = new DrinkRecipe();
        myDrink.CreamyLatte(500, "CN");
    }
}
