import SwiftUI
import ViewModel
import Stub

struct UEItemView: View {
    
    @StateObject var ueVM: UEVM
    @State private var note: Double = 20.0
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    Text("UE\(ueVM.numero) - \(ueVM.name)")
                    Spacer()
                    Text(String(ueVM.coefficient))
                }
                .padding(.horizontal)
                HStack{
                    GeometryReader { geometry in
                        HStack(spacing: 0) {
                            Capsule()
                                .frame(width: max(CGFloat(ueVM.moyenne / 20) * 200, 20), height: 30)
                                .foregroundColor(ueVM.moyenne < 10 ? .red : .green)
                                .gesture(DragGesture())
                            Text("\(ueVM.moyenne, specifier: "%.1f")")
                                .padding(.horizontal)
                        }
                    }
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.bottom)
                Divider()
            }
        }
    }
}

struct UEItemView_Previews: PreviewProvider {
    static var previews: some View {
        let odinVM = OdinVM(withBlocs: Stub().loadBlocs())
        UEItemView(ueVM : odinVM.blocsVM[0].uesVM[0])
    }
}
