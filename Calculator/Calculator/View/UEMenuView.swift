import SwiftUI

struct UEMenuView: View {
    var body: some View {
        NavigationStack{
            VStack{
                ScrollView{
                    VStack(alignment: .leading){
                        Label("UEs", systemImage: "doc.on.doc.fill")
                            .font(.title)
                        Text("Détail des UEs")
                        VStack {
                            HStack{
                                ItemView()
                                NavigationLink(destination: UEView()){
                                    Image(systemName: "square.and.pencil")
                                }
                                Divider()
                            }
                            HStack{
                                ItemView()
                                NavigationLink(destination: UEView()){
                                    Image(systemName: "square.and.pencil")
                                }
                                Divider()
                            }
                            HStack{
                                ItemView()
                                NavigationLink(destination: UEView()){
                                    Image(systemName: "square.and.pencil")
                                }
                                Divider()
                            }
                            HStack{
                                ItemView()
                                NavigationLink(destination: UEView()){
                                    Image(systemName: "square.and.pencil")
                                }
                                Divider()
                            }
                            HStack{
                                ItemView()
                                NavigationLink(destination: UEView()){
                                    Image(systemName: "square.and.pencil")
                                }
                                Divider()
                            }
                            HStack{
                                ItemView()
                                NavigationLink(destination: UEView()){
                                    Image(systemName: "square.and.pencil")
                                }
                                Divider()
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
        UEMenuView()
    }
}
