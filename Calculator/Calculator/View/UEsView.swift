//
//  UEsView.swift
//  Calculator
//
//  Created by etudiant on 25/05/2023.
//

import SwiftUI

struct UEsView: View {
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                Label("UEs", systemImage: "doc.on.doc.fill")
                    .font(.title)
                Text("Détail des UEs")
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

struct UEsView_Previews: PreviewProvider {
    static var previews: some View {
        UEsView()
    }
}
