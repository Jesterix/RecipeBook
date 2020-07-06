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

    var quantityString: String {
        get {
            guard let value = quantity else { return "0" }
            return value.string
        }
        set {
            if let value = NumberFormatter().number(from: newValue) {
                self.quantity = value.doubleValue
            }
        }
    }
}


