import SwiftUI
import ViewModel

struct MatiereView: View {
    
    @State private var note: Double = 20.0
    //@ObservedObject var matiere: MatiereVM
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    Text("UE1 - Génie logiciel")
                    Spacer()
                    Text("6")
                }
                .padding(.horizontal)
                HStack{
                    GeometryReader { geometry in
                        HStack(spacing: 0) {
                            Capsule()
                                .frame(width: max(CGFloat(note / 20) * 200, 20), height: 30)
                                .foregroundColor(note < 10 ? .red : .green)
                                .gesture(DragGesture()
                                    .onChanged { value in
                                        let width = max(min(value.location.x, geometry.size.width), 0)
                                        let percentage = width / geometry.size.width
                                        note = percentage * 20
                                    }
                                )
                            Text("\(note, specifier: "%.1f")")
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

struct MatiereView_Previews: PreviewProvider {
    static var previews: some View {
        MatiereView()
    }
}
