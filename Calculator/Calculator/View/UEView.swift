import SwiftUI
import ViewModel
import Stub

struct UEView: View {
    
    @StateObject var ueVM: UEVM
    
    @State private var canEdit = false
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(alignment: .leading){
                    UEItemView(ueVM: ueVM)
                        .padding()
                    VStack(alignment: .leading){
                        HStack{
                            Image(systemName: "xmark.circle.fill")
                            Text("coefficient :")
                            Text(String(ueVM.coefficient))
                        }
                        HStack{
                            Image(systemName: "map")
                            Text("Détails des notes")
                        }
                    }
                    .padding(.bottom)
                    VStack{
                        ForEach(ueVM.matieresVM) { matierevm in
                            HStack {
                                Button(action: {
                                    canEdit.toggle()
                                }) {
                                    Image(systemName: canEdit ? "lock.open" : "lock")
                                }
                                MatiereItemView(matiereVM: matierevm, edition: canEdit)
                            }
                        }
                    }
                }
            }
            .navigationTitle("UE\(ueVM.numero) \(ueVM.name)")
            .toolbar{
                Button(action: {
                    ueVM.isEditing.toggle()
                    // si on est en mode édition
                    // on déclenche élement la redirection vers la sheet
                    // et on fait basculer la propriété isEditing de false a true
                }) {
                    Text("Edit")
                }
            }
            .sheet(isPresented: $ueVM.isEditing){
                UEEditView(ueVM: ueVM)
            }
        }
    }
}

struct UEView_Previews: PreviewProvider {
    static var previews: some View {
        let odinVM = OdinVM(withBlocs: Stub().loadBlocs())
        UEView(ueVM: odinVM.blocsVM[0].uesVM[0])
    }
}
