import SwiftUI
import ViewModel
import Stub

struct UEMenuView: View {
    
    @StateObject var odinVM : OdinVM
    
    var body: some View {
        NavigationStack{
            VStack{
                ScrollView{
                    VStack(alignment: .leading){
                        Label("UEs", systemImage: "doc.on.doc.fill")
                            .font(.title)
                        Text("Détail des UEs")
                        VStack {
                            ForEach(odinVM.blocsVM) { blocvm in
                                ForEach(blocvm.uesVM) { uevm in
                                    HStack{
                                        MatiereView(ueVM: uevm)
                                        NavigationLink(destination: UEView()){
                                            Image(systemName: "square.and.pencil")
                                        }
                                        Divider()
                                    }
                                }
                            }
                            
                        }
                    }
                    
                }
                .padding()
            }
            
        }
        .background(Color("Backgroundcolor"))
        .cornerRadius(8)
    }
    
}


struct UEMenuView_Previews: PreviewProvider {
    static var previews: some View {
        UEMenuView(odinVM: OdinVM(withBlocs: Stub().loadBlocs()))
    }
}
