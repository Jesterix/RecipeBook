import Foundation

struct Ingredient: Identifiable {
    let id = UUID()
    var title: String
    var quantity: Double?
    var measurement: RBMeasurement?

    var measureTitle: String {
        get {
            measurement?.title ?? ""
        }
        set {
            measurement?.title = newValue
        }
    }
}



