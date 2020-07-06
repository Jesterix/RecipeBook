import SwiftUI

struct IngredientList: View {
    @Binding var ingredients: [Ingredient]

    var body: some View {
        VStack(spacing: 10) {
            ExpandingList(content: IngredientListRows(ingredients: $ingredients), maxRowsForExpand: 5)

            HStack {
                Button("Add ingredient") {
                    //add to model
                    self.ingredients.append(Ingredient(
                        title: "Flour",
                        quantity: 3,
                        measurement: RBMeasurement(
                            title: "",
                            weightInGramms: 0)))
                }
                Spacer()
            }
            .border(Color.red, width: 1)
        }
    }
}

struct IngredientListRows: View {
    @Binding var ingredients: [Ingredient]

    var body: some View {
        VStack {
            ForEach(self.ingredients.indices, id: \.self) { index in
                HStack {
                    TextField(
                        "",
                        text: self.$ingredients[index].title)
                    Divider()

                    TextField(
                        "",
                        text: self.$ingredients[index].quantityString)

                    Divider()
                    TextField(
                        "",
                        text: self.$ingredients[index].measureTitle)
                }
            }
        }
    }
}
