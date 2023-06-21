import SwiftUI
import ViewModel
import Stub

struct ContentView: View {
    
    @StateObject public var odinVM : OdinVM
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    BlocsMenuView(odinVM: odinVM)
                    Divider()
                        .padding(.vertical, 2)
                    UEMenuView(odinVM: odinVM)
                }
                .padding(6)
            }
            .navigationTitle("Calculator")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(odinVM: OdinVM(withBlocs:  Stub().loadBlocs()))
    }
}
