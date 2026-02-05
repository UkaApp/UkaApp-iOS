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
            
            VStack(spacing: 24) {
                
                Spacer()
                
                VStack(spacing: 8) {
                    Text("UKA i Ås")
                        .font(.custom("Poppins-BoldItalic", size:60))
                        .foregroundColor(Color("NeutralCream"))
                    
                    Text("2026")
                        .font(.custom("DMSans-Bold", size: 40))
                        .foregroundColor(Color("NeutralCream"))
                }
                
                Spacer()
                
                Button(action: {
                    
                    //naviger til neste skjerm
                }) {
                    Text("Neste side")
                        .font(.custom("DMSans-Bold", size: 30))
                        .foregroundColor(Color("UKAOrange"))
                        .padding(.horizontal, 60)
                        .padding(.vertical, 20)
                        .background(Color("NeutralCream"))
                        .cornerRadius(30)
                        .shadow(radius: 4)
                }
                
                Spacer()
                
                VStack(spacing: 30) {
                    Text("Presentert av")
                        .font(.custom("DMSans-Regular", size: 20))
                        .foregroundColor(Color("NeutralCream"))
                    
                    Image("sponsor_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 32)
                }
            }
            .padding()
        }
    }
}
                
       

#Preview {
    IntroView(onNext: {})
}
