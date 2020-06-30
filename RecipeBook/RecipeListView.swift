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
    @State var titleForRecipe: String = ""

    var body: some View {
        VStack {
            NavigationView {
                List (recipeListViewModel.recipes) { recipe in
                    NavigationLink (destination: RecipeView(recipe: recipe)) {
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
                .navigationBarTitle("Recipe List")
                .navigationBarHidden(true)
            }

            Spacer()
            TextField("Enter title for recipe...", text: $titleForRecipe, onEditingChanged: { (changed) in
                print("Title onEditingChanged - \(changed)")
                if !changed && self.titleForRecipe != "" {
                    self.recipeListViewModel.appendRecipe(
                        with: self.titleForRecipe)
                    self.titleForRecipe = ""
                }
            }) {
                print("Title onCommit")
            }
            .padding()
            .textFieldStyle(RoundedBorderTextFieldStyle())
        }
        .keyboardAdaptive()

    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
