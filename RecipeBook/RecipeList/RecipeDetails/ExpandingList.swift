import SwiftUI

struct ExpandingList: View {
    var content: IngredientListRows
    var contentCounter: Int {
        content.ingredients.count
    }
    let maxRowsForExpand: Int

    var body: some View {
        VStack {
            if contentCounter <= maxRowsForExpand {
                content
                    .fixedSize(horizontal: false, vertical: true)
                    .border(Color.red, width: 1)
            } else {
                ScrollView {
                    self.content
                }
                .border(Color.red, width: 1)
                .frame(maxHeight: 30 * CGFloat(self.maxRowsForExpand))
            }
        }
    }
}



