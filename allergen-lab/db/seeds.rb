Recipe.destroy_all
Food.destroy_all
Ingredient.destroy_all
Allergy.destroy_all
User.destroy_all

meals = ["Breakfast", "Lunch", "Dinner", "Sweets"]


10.times do
    Ingredient.create({
    name:Faker::Food.ingredient
    })
end

10.times do
    user = User.create({
        name:Faker::FunnyName.name
    })

    6.times do
        recipe = Recipe.create({
                name:Faker::Food.dish,
                meal_type: meals.sample,
                user_id: user.id
            })
       

        5.times do
            Food.create({
                ingredient_id: Ingredient.all.sample.id,
                recipe_id: recipe.id,
                measurement: Faker::Measurement.volume
            })
        
        end
    end
    5.times do
        Allergy.create({
            ingredient_id: Ingredient.all.sample.id,
            user_id: user.id})
    end
end