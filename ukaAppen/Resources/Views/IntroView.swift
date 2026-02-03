//
//  IntroView.swift
//  ukaAppen
//
//  Created by Marte Tangen on 29/01/2026.
//
import SwiftUI

struct IntroView: View {
    var onNext: (() -> Void)? = nil
    
    var body: some View {
        ZStack {
            Color("UKAOrange")
                .ignoresSafeArea()
    
            VStack(spacing: 0) {
                // Top label
                
                Spacer()
                
                VStack(spacing: 10) {
                    Text("UKA I ÅS")
                        .font(.custom("Poppins-BoldItalic", size: 60))
                        .italic()
                        .foregroundStyle(Color("NeutralCream"))
                    
                    Text("2026")
                        .font(.custom("Poppins-BoldItalic", size: 40))
                        .fontWeight(.semibold)
                        .italic()
                        .foregroundStyle(Color("NeutralCream"))
                }
                
                Spacer()
                
                // CTA Button
                Button {
                    onNext?()
                } label: {
                    Text("Neste side")
                        .font(.custom("DMSans-Regular", size: 35))
                        .fontWeight(.semibold)
                        .foregroundStyle(Color("UKAOrange"))
                        .padding(.vertical, 18)
                        .frame(maxWidth: 280)
                        .background(Color("NeutralCream"))
                        .clipShape(Capsule())
                        .shadow(color: .black.opacity(0.20), radius: 10, x: 0, y: 6)
                }
                .padding(.bottom, 56)
                
                // Presented by + logo
                VStack(spacing: 10) {
                    Text("Presentert av")
                        .font(.custom("DMSans-Bold", size: 16))
                        .fontWeight(.semibold)
                        .foregroundStyle(Color("NeutralCream"))
                    
                    // Bytt "uka_logo" til navnet på logo-asseten din (Image Set i Assets)
                    Image("main_sponsor_img")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 40)
                        .accessibilityLabel("main_sponsor_img")
                }
                .padding(.bottom, 28)
            }
            .padding(.horizontal, 24)
        }
    }
}

#Preview {
    IntroView(onNext: {})
}
