import SwiftUI

struct IngredientList: View {
    @Binding var ingredients: [Ingredient]

    var body: some View {
        VStack(spacing: 10) {
            ScrollView {
                VStack {
                    ForEach(self.ingredients.indices, id: \.self) { index in
                        HStack {
                            TextField(
                                "",
                                text: self.$ingredients[index].title)
                            Divider()
                            TextField(
                                "",
                                value: self.$ingredients[index].quantity,
                                formatter: DoubleFormatter())
                                .keyboardType(.decimalPad)
                                .multilineTextAlignment(.trailing)
                            Divider()
                            TextField(
                                "",
                                text: self.$ingredients[index].measureTitle)
                        }
                    }
                }
            }
            .fixedSize(horizontal: false, vertical: true)
            .border(Color.red, width: 1)

            HStack {
                Button("Add ingredient") {
                    //add to model
                    self.ingredients.append(Ingredient(title: "Flour", quantity: 3, measurement: nil))
                }
                Spacer()
            }
            .border(Color.red, width: 1)
        }
    }
}


