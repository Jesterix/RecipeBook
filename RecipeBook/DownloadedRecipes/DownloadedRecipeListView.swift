import SwiftUI

struct DownloadedRecipeListView: View {
    @EnvironmentObject var viewModel: DownloadedRecipesViewModel
    var ingredient: String = "tomato"

    var body: some View {
        NavigationView {
            List(viewModel.items) { item in
                VStack(alignment: .leading) {
                    DownloadedRecipeRow(item: item)
                        .onAppear() {
                            if self.viewModel.items.isLast(item) {
                                self.viewModel.loadPage(with: self.ingredient)
                            }
                    }
                }
            }
            .navigationBarTitle("Recipes")
            .onAppear() {
                self.viewModel.loadPage(with: self.ingredient)
            }
        }
    }
}

extension Recipe: Identifiable {
    public var id: String {
        self.title ?? UUID().uuidString
    }
}

