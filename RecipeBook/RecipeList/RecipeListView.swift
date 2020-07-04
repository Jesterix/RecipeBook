import SwiftUI

struct RecipeListView: View {
    @EnvironmentObject var recipeListViewModel: RecipeListViewModel
    @State var titleForRecipe: String = ""

    var body: some View {
        NavigationView {
            VStack {
                List (recipeListViewModel.recipes) { recipe in
                    NavigationLink (destination: RecipeView(recipe: recipe)) {
                        RecipeListRow(recipe: recipe)
                    }
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
            .navigationBarTitle("Recipe List")
            .navigationBarHidden(true)
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
