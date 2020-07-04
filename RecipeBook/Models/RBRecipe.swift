import Foundation

struct RBRecipe: Identifiable {
    let id = UUID()
    var title: String
    var ingredients: [Ingredient] = []
    var text: String = ""

    func demo() -> RBRecipe {
        let measurement = RBMeasurement(title: "spoon", weightInGramms: 15)
        let ingredient = Ingredient(title: "Water", quantity: 1.5, measurement: measurement)
        return RBRecipe(title: title, ingredients: [ingredient], text: "Take this water and drink it!")
    }
}
