import SwiftUI
import Stub
import ViewModel

@main
struct CalculatorApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(odinVM: OdinVM(withBlocs: Stub().loadBlocs()))
        }
    }
}
