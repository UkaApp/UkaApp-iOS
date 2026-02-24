//
//  HomeViewSara.swift
//  ukaAppen
//
//  Created by Sara Christine Gjerløw on 23/02/2026.
//

import SwiftUI

struct HomeViewSara: View {
    var body: some View {
        ZStack {
            Color("UKAOrange")
                .ignoresSafeArea()

            VStack(alignment: .leading, spacing: 18) {

                Image("Uka_design")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200) 
                    .frame(maxWidth: .infinity)
                    .clipped()

                Text("Ukens program")
                    .font(.custom("BalginText-BoldItalic", size: 36))
                    .foregroundColor(.white)
                    .padding(.horizontal, 24)

                RoundedRectangle(cornerRadius: 22, style: .continuous)
                    .fill(Color("UKAOrangeLight").opacity(0.55))
                    .frame(height: 420)
                    .shadow(color: Color.black.opacity(0.12), radius: 10, x: 0, y: 6)
                    .padding(.horizontal, 24)

                Spacer(minLength: 0)
            }
            .padding(.top, 8)
            .padding(.bottom, 110) // space for TabBar
        }
    }
}

#Preview {
    HomeViewSara()
}
