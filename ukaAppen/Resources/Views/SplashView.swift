//
//  splash.swift
//  ukaAppen
//
//  Created by Kasper Karlsen on 20/11/2025.
//

import Foundation
import SwiftUI

struct SplashView: View {
    @State private var shouldNavigate = false

    var body: some View {
        Group {
            if shouldNavigate {
                ContentView()
            } else {
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
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        withAnimation {
                            shouldNavigate = true
                        }
                    }
                }
            }
        }
    }
}
