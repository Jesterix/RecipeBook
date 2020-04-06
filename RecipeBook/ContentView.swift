//
//  ContentView.swift
//  RecipeBook
//
//  Created by Георгий Хайденко on 06.04.2020.
//  Copyright © 2020 George Khaydenko. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var recipe = Recipe(title: "water").demo()

    var body: some View {
        List {
            HStack {
                Text (recipe.demo().title)
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
                        Text (recipe.demo().text ?? "no text")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
