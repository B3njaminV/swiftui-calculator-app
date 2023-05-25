//
//  UEView.swift
//  Calculator
//
//  Created by etudiant on 25/05/2023.
//

import SwiftUI

struct UEView: View {
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
                    Rectangle()
                        .frame(width: 100, height: 30)
                        .cornerRadius(20)
                        .foregroundColor(Color("ColorOK"))
                    Text("12.22")
                    Spacer()
                    NavigationLink(destination: UEView()){
                        Image(systemName: "square.and.pencil")
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct UEView_Previews: PreviewProvider {
    static var previews: some View {
        UEView()
    }
}
