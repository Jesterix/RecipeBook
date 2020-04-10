//
//  DownloadedRecipeRow.swift
//  RecipeBook
//
//  Created by Георгий Хайденко on 10.04.2020.
//  Copyright © 2020 George Khaydenko. All rights reserved.
//

import SwiftUI

struct DownloadedRecipeRow: View {
    @EnvironmentObject var viewModel: DownloadedRecipesViewModel

    let item: Recipe

    var body: some View {
        VStack(alignment: .leading) {
            Text(item.title ?? "")
                .font(.headline)
            Text(item.ingredients ?? "")
                .font(.callout)
                .foregroundColor(.gray)

            if self.viewModel.isPageLoading && self.viewModel.items.isLast(item) {
                Divider()
                Text("Loading...")
            }
        }
    }
}

