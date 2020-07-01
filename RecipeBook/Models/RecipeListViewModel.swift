//
//  RecipeListViewModel.swift
//  RecipeBook
//
//  Created by Георгий Хайденко on 10.04.2020.
//  Copyright © 2020 George Khaydenko. All rights reserved.
//

import Foundation

final class RecipeListViewModel: ObservableObject {
    @Published private(set) var recipes: [RBRecipe] =
        [RBRecipe.init(title: "Water").demo(),
        RBRecipe.init(title: "Bread").demo(),
        RBRecipe.init(title: "Soup").demo()]

    func appendRecipe(with title: String) {
        recipes.append(RBRecipe(title: title).demo())
    }

    func changeRecipe(at index: Int, with recipe: RBRecipe) {
        recipes[index] = recipe
    }
}
