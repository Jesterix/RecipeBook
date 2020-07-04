import SwiftUI

final class DownloadedRecipesViewModel: ObservableObject {
    @Published private(set) var items: [Recipe] = [Recipe]()
    @Published private(set) var page: Int = 0
    @Published private(set) var isPageLoading: Bool = false

    func loadPage(with ingredient: String) {
        guard isPageLoading == false else {
            return
        }
        isPageLoading = true
        page += 1
        RecipeAPI.getRecipe(i: "\(ingredient)", q: "salad", p: page) { response, error in
            if let results = response?.results {
                self.items.append(contentsOf: results)
            }
            self.isPageLoading = false
        }
    }
}
