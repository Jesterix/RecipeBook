//
//  RecipeListView.swift
//  RecipeBook
//
//  Created by Георгий Хайденко on 10.04.2020.
//  Copyright © 2020 George Khaydenko. All rights reserved.
//

import SwiftUI

struct RecipeListView: View {
    @EnvironmentObject var recipeListViewModel: RecipeListViewModel

    var body: some View {
                List {
            ForEach(recipeListViewModel.recipes) { recipe in
                HStack {
                    Text(recipe.title)
                    Spacer()
                    VStack {
                        HStack {
                            Spacer()
                            Text (recipe.ingredients[0].title)
                        }
                        HStack {
                            Spacer()
                            recipe.ingredients[0].quantity.map
                                { Text (String($0)) }
                            recipe.ingredients[0].measurement.map
                                { Text ($0.title) }
                        }
                        HStack {
                            Spacer()
                            Text (recipe.text ?? "no text")
                        }
                    }
                }
            }
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}