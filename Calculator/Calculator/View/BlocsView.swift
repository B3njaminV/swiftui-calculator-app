//
//  BlocsView.swift
//  Calculator
//
//  Created by etudiant on 25/05/2023.
//

import SwiftUI

struct BlocsView: View {
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                Label("Blocs", systemImage: "doc.on.doc.fill")
                    .font(.title)
                Text("Vous devez avoir la moyenne à chacun des blocs pour avoir votre diplôme")
                HStack{
                    Label("Total", systemImage: "doc.on.doc.fill")
                    Spacer()
                    HStack{
                        Text("11.12")
                        Image(systemName: "graduationcap.circle.fill")
                    }
                }
                HStack{
                    Label("Projet/Stage", systemImage: "doc.on.doc.fill")
                    Spacer()
                    HStack{
                        Text("11.12")
                        Image(systemName: "graduationcap.circle.fill")
                    }
                }
            }
            .padding()
        }
        .background(Color("Backgroundcolor"))
        .cornerRadius(8)
    }
}

struct BlocsView_Previews: PreviewProvider {
    static var previews: some View {
        BlocsView()
    }
}
