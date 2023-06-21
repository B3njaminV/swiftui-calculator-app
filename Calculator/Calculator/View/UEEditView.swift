import SwiftUI
import ViewModel
import Stub

struct UEEditView: View {
    
    @StateObject var ueVM: UEVM
    
    var body: some View {
        NavigationStack {
            VStack{
                Form {
                    HStack() {
                        Text("Titre").bold()
                        TextField("", text: $ueVM.name)
                    }
                    HStack(alignment: .firstTextBaseline) {
                        Text("Coefficient").bold()
                        TextField("", value: $ueVM.coefficient, format: .number)
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
