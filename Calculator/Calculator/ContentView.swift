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
                    UEMenuView()
                }
                .padding(6)
            }
            .navigationTitle("Calculette")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(odinVM: OdinVM(blocs: Stub().loadBlocs()))
    }
}
