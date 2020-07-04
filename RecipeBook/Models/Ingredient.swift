//
//  Ingredient.swift
//  RecipeBook
//
//  Created by Георгий Хайденко on 06.04.2020.
//  Copyright © 2020 George Khaydenko. All rights reserved.
//

import Foundation

struct Ingredient: Identifiable {
    let id = UUID()
    var title: String
    var quantity: Double?
    var measurement: RBMeasurement?

    var measureTitle: String {
        get {
            measurement?.title ?? ""
        }
        set {
            measurement?.title = newValue
        }
    }
}



