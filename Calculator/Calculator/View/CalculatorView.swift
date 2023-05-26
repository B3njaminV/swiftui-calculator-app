//
//  CalculatorView.swift
//  Calculator
//
//  Created by etudiant on 26/05/2023.
//

import SwiftUI

struct CalculatorView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    BlocsMenuView()
                    Divider()
                        .padding(.vertical, 2)
                    UEMenuView()
                }
                .padding(6)
            }
            .navigationTitle("Calculette")
        }
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}
