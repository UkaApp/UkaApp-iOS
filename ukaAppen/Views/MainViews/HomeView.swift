//
//  homeView.swift
//  ukaAppen
//
//  Created by Kasper Karlsen on 05/02/2026.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            
            //Logo tekst
            VStack() {
                Text("UKA i Ås")
                    .font(.custom("Poppins-BoldItalic", size: 64))
                    .foregroundColor(Color("NeutralCream"))
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .padding(.top, 50)
            
            // Forsidebile
            VStack {
                Image("home_img")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal, 16)
            }
            
            
            

        }
    }
}


#Preview {
    HomeView()
}
