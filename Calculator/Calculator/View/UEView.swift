import SwiftUI

struct UEView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(alignment: .leading){
                    VStack{
                        ItemView()
                            .padding()
                    }
                    .padding()
                    VStack(alignment: .leading){
                        HStack{
                            Image(systemName: "xmark.circle.fill")
                            Text("coefficient :")
                            Text("5")
                        }
                        HStack{
                            Image(systemName: "map")
                            Text("Détails des notes")
                        }
                    }
                    .padding(.bottom)
                    VStack{
                        HStack{
                            NavigationLink(destination: UEView()){
                                Image(systemName: "lock")
                            }
                            ItemView()
                        }
                        .padding(.horizontal)
                    }
                }
            }
            .navigationTitle("UE1 Génie logiciel")
            .toolbar{
                Button(action: {
                }) {
                    Text("Edit")
                }
            }
        }
    }
}

struct UEView_Previews: PreviewProvider {
    static var previews: some View {
        UEView()
    }
}
