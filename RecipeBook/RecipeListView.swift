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
    @ObservedObject private var kGuard = KeyboardGuardian(textFieldCount: 1)

    var body: some View {
        VStack {
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
            Spacer()

            TextField("Enter title for recipe...", text: $titleForRecipe, onEditingChanged: { (changed) in
                print("Username onEditingChanged - \(changed)")
            }) {
                print("Username onCommit")
                self.recipeListViewModel.appendRecipe(
                    with: self.titleForRecipe)
            }
            .padding()
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .background(GeometryGetter(rect: $kGuard.rects[0]))
        }
        .offset(y: kGuard.slide).animation(.easeInOut(duration: 0.5))
        .onAppear { self.kGuard.addObserver() }
        .onDisappear { self.kGuard.removeObserver() }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
