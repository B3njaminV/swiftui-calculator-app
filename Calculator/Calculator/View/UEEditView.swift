import SwiftUI
import ViewModel
import Stub

struct UEEditView: View {
    
    @ObservedObject var ueVM: UEVM
    
    var body: some View {
        NavigationStack {
            VStack{
                Form {
                    Text("Infos utiles :")
                    HStack() {
                        Text("Titre").bold()
                        TextField("", text: $ueVM.name)
                    }
                    HStack(alignment: .firstTextBaseline) {
                        Text("Coefficient").bold()
                        TextField("", value: $ueVM.coefficient, format: .number)
                    }
                    Text("Liste des matières :")
                    ForEach($ueVM.matieresVM) { $matiereVM in
                        HStack {
                            TextField("Nom", text: $matiereVM.name).bold()
                            TextField("Coefficient", value: $matiereVM.coefficient, format: .number)
                        }
                    }
                }
            }
            .navigationTitle("UE\(ueVM.numero) \(ueVM.name)")
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button(action: {
                        ueVM.onEdited(isCancelled: true)
                    }) {
                        Text("Cancel")
                    }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button(action: {
                        ueVM.onEdited()
                    }) {
                        Text("Done")
                    }
                }
            }
        }
        
    }
}

struct UEEditView_Previews: PreviewProvider {
    static var previews: some View {
        let odinVM = OdinVM(withBlocs: Stub().loadBlocs())
        UEEditView(ueVM: odinVM.blocsVM[0].uesVM[0])
    }
}
