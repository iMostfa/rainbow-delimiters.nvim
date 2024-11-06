struct Name {
    let name: String
    enum Namespace {
        struct Mostafa {
            let age: Int
        }
    }
}

import SwiftUI

struct MainView: SwiftUI.View {
    enum Constants {
        case name
        case age

        enum Nested {
            case error
        }
    }

    func onAppear() { print("hello") }
    func ontapped() -> Bool { return true }

    var body: some View {
        VStack {
            HStack {
                VStack {
                    ScrollView {
                        Text("Hello, World!")
                    }
                }
            }
        }
    }
}
