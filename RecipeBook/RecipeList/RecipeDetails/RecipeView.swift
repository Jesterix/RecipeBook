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
        VStack {
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Spacer()
                    Text(recipe.title)
                    Spacer()
                }
                ForEach(recipe.ingredients) { ingredient in
                    HStack {
                        Text(ingredient.title)
                        Spacer()
                        Text("\(ingredient.quantity?.description ?? "")")
                        Text("\(ingredient.measurement?.title ?? "")")
                    }
                }
                Text(recipe.text ?? "")
            }
            .padding()
            Spacer()
        }
        .navigationBarTitle("", displayMode: .inline)
    }
}
