import SwiftUI

struct ContentView: View {
    @EnvironmentObject var recipeListViewModel: RecipeListViewModel
    @EnvironmentObject var downloadedRecipeListViewModel: DownloadedRecipesViewModel

    var body: some View {
        TabView {
            RecipeListView()
                .environmentObject(recipeListViewModel)
                .tag(0)
                .tabItem {
                    Text("Recipes")
                    Image(systemName: "exclamationmark.circle")
            }
            DownloadedRecipeListView()
                .environmentObject(downloadedRecipeListViewModel)
                .tag(1)
                .tabItem {
                    Text("Recipes from net")
                    Image(systemName: "globe")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
