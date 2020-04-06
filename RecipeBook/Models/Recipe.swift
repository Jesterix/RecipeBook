//
//  Recipe.swift
//  RecipeBook
//
//  Created by Георгий Хайденко on 06.04.2020.
//  Copyright © 2020 George Khaydenko. All rights reserved.
//

import Foundation

struct Recipe {
    var title: String
    var ingredients: [Ingredient] = []
    var text: String?
}
