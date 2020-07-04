import SwiftUI

struct RecipeListRow: View {
    var recipe: RBRecipe

    var body: some View {
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
                    Text (recipe.text)
                        .lineLimit(1)
                }
            }
        }
    }
}

