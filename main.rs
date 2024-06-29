fn creamy_latte(total_volume: f64, language: &str) {
    let water_base = 150.0;
    let instant_coffee_base = 8.0;
    let condensed_milk_base = 7.0;
    let full_cream_evaporated_milk_base = 100.0;
    let fresh_milk_base = 85.0;

    let ratio = total_volume / 350.0;
    
    let result = match language {
        "CN" => format!("配方 for {} ml 厚拿铁:", total_volume),
        "EN" => format!("Recipe for {} ml Creamy Latte:", total_volume),
        "JP" => format!("{} mlのクリーミーラテのレシピ:", total_volume),
        "KR" => format!("{} ml 크리미 라떼 레시피:", total_volume),
        _ => format!("Recipe for {} ml Creamy Latte:", total_volume),
    };

    println!("{}", result);
    println!("水: {:.2} 克", water_base * ratio);
    println!("速溶咖啡: {:.2} 克", instant_coffee_base * ratio);
    println!("炼乳: {:.2} 克", condensed_milk_base * ratio);
    println!("全脂淡奶: {:.2} 克", full_cream_evaporated_milk_base * ratio);
    println!("鲜奶: {:.2} 克", fresh_milk_base * ratio);
}

fn main() {
    creamy_latte(500.0, "CN");
}
