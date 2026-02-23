//
//  splash.swift
//  ukaAppen
//
//  Created by Kasper Karlsen on 20/11/2025.
//

import Foundation
import SwiftUI

struct SplashView: View {

    var body: some View {
        Group {
          
                VStack {
                    Text("Powered by:")
                        .font(.largeTitle)
                        .bold()
                    Image("main_sponsor_img")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color("UKAOrange"))
                
            
        }
    }
}

#Preview {
    SplashView()
}
