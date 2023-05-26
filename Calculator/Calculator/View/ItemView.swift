import SwiftUI

struct ItemView: View {
    var body: some View {
        NavigationStack{
            HStack{
                VStack{
                    HStack{
                        Text("UE1 - Génie logiciel")
                        Spacer()
                        Text("6")
                    }
                    .padding(.horizontal)
                    HStack{
                        Rectangle()
                            .frame(width: 100, height: 30)
                            .cornerRadius(20)
                            .foregroundColor(Color("ColorOK"))
                        Text("12.22")
                        Spacer()
                    }
                    .padding(.horizontal)
                    Divider()
                }
            }
            
        }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
    }
}
