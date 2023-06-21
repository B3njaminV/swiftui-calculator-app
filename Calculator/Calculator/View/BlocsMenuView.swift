import SwiftUI
import Stub
import ViewModel
struct BlocsMenuView: View {
    
    @StateObject var odinVM : OdinVM
    
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                Label("Blocs", systemImage: "doc.on.doc.fill")
                    .font(.title)
                Text("Vous devez avoir la moyenne à chacun des blocs pour avoir votre diplôme")
                
                ForEach(odinVM.blocsVM){ blocvm in
                    HStack{
                        Label(blocvm.name, systemImage: "doc.on.doc.fill")
                        Spacer()
                        HStack{
                            Text(String(format: "%.2f", blocvm.moyenne))
                            Image(systemName: "graduationcap.circle.fill")
                        }
                    }
                }
            }
            .padding()
        }
        .background(Color("Backgroundcolor"))
        .cornerRadius(8)
    }
}

struct BlocsMenuView_Previews: PreviewProvider {
    static var previews: some View {
        BlocsMenuView(odinVM: OdinVM(withBlocs: Stub().loadBlocs()))
    }
}
