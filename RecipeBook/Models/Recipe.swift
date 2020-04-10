//
//  Recipe.swift
//  RecipeBook
//
//  Created by Георгий Хайденко on 06.04.2020.
//  Copyright © 2020 George Khaydenko. All rights reserved.
//

import Foundation

struct Recipe: Identifiable {
    let id = UUID()
    var title: String
    var ingredients: [Ingredient] = []
    var text: String?

    func demo() -> Recipe {
        let measurement = RBMeasurement(title: "spoon", weightInGramms: 15)
        let ingredient = Ingredient(title: "Water", quantity: 1.5, measurement: measurement)
        return Recipe(title: title, ingredients: [ingredient], text: "Take this water and drink it!")
    }
}
