//
//  RecipeView.swift
//  RecipeBook
//
//  Created by Георгий Хайденко on 30.06.2020.
//  Copyright © 2020 George Khaydenko. All rights reserved.
//

import SwiftUI

struct RecipeView: View {
    var recipe: RBRecipe

    var body: some View {
        Text(recipe.title)
    }
}
