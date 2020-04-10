//
//  RecipeListViewModel.swift
//  RecipeBook
//
//  Created by Георгий Хайденко on 10.04.2020.
//  Copyright © 2020 George Khaydenko. All rights reserved.
//

import Foundation

final class RecipeListViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] =
        [Recipe.init(title: "Water").demo(),
        Recipe.init(title: "Bread").demo(),
        Recipe.init(title: "Soup").demo()]
}
