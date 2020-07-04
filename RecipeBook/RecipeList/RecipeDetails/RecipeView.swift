import SwiftUI

struct RecipeView: View {
    @EnvironmentObject var recipeViewModel: RecipeListViewModel
    @State var recipe: RBRecipe

    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Spacer()
                    TextField("Title", text: $recipe.title)
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                IngredientList(ingredients: $recipe.ingredients)
                MultilineTextField("Recipe", text: $recipe.text)
            }
            .padding()
            Spacer()
        }
        .navigationBarTitle("", displayMode: .inline)
        .onDisappear() {
            guard let index = self.recipeViewModel.recipes.firstIndex(
                where: { $0.id == self.recipe.id}) else {
                    return
            }
            self.recipeViewModel.changeRecipe(at: index, with: self.recipe)
        }
    }
}
//.border(Color.red, width: 1)
