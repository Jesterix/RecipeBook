//
//  IngredientList.swift
//  RecipeBook
//
//  Created by Георгий Хайденко on 01.07.2020.
//  Copyright © 2020 George Khaydenko. All rights reserved.
//

import SwiftUI

struct IngredientList: View {
    @Binding var ingredients: [Ingredient]

    var body: some View {
        VStack(spacing: 10) {
            ScrollView {
                VStack {
                    ForEach(self.ingredients.indices, id: \.self) { index in
                        HStack {
                            TextField(
                                "",
                                text: self.$ingredients[index].title)
                            Spacer()
                            TextField(
                                "",
                                value: self.$ingredients[index].quantity,
                                formatter: DoubleFormatter())
                                .keyboardType(.decimalPad)
                            TextField(
                                "",
                                text: self.$ingredients[index].measureTitle)
                        }
                    }
                }
            }
            HStack {
                Button("Add ingredient") {
                    //add to model
                }
                Spacer()
            }
        }
    }
}


