import Foundation

final class RecipeListViewModel: ObservableObject {
    @Published private(set) var recipes: [RBRecipe] =
        [RBRecipe.init(title: "Water").demo(),
        RBRecipe.init(title: "Bread").demo(),
        RBRecipe.init(title: "Soup").demo()]

    func appendRecipe(with title: String) {
        recipes.append(RBRecipe(title: title).demo())
    }

    func changeRecipe(at index: Int, with recipe: RBRecipe) {
        recipes[index] = recipe
    }
}
