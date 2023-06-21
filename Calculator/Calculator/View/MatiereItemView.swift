import SwiftUI
import ViewModel
import Stub

struct MatiereItemView: View {
    
    @StateObject var matiereVM: MatiereVM
    
    var edition: Bool
    
    @State private var note: Double = 20.0
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    Text(matiereVM.name)
                    Spacer()
                    Text(String(matiereVM.coefficient))
                }
                .padding(.horizontal)
                HStack{
                    GeometryReader { geometry in
                        HStack(spacing: 0) {
                            Capsule()
                                .frame(width: max(CGFloat(matiereVM.note / 20) * 200, 20), height: 30)
                                .foregroundColor(matiereVM.note < 10 ? .red : .green)
                                .gesture(DragGesture()
                                    .onChanged { value in
                                        let width = max(min(value.location.x, geometry.size.width), 0)
                                        let percentage = width / geometry.size.width
                                        matiereVM.note = Float(percentage * 20)
                                    },
                                    including: edition ? .gesture : .none
                                )
                            Text("\(matiereVM.note, specifier: "%.1f")")
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

struct MatiereItemView_Previews: PreviewProvider {
    static var previews: some View {
        let odinVM = OdinVM(withBlocs: Stub().loadBlocs())
        MatiereItemView(matiereVM: odinVM.blocsVM[0].uesVM[0].matieresVM[0], edition: false)
    }
}
