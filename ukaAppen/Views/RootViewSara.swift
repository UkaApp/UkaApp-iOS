//
//  RootViewSara.swift
//  ukaAppen
//
//  Created by Sara Christine Gjerløw on 23/02/2026.
//

import SwiftUI

struct RootViewSara: View {
    
    @State private var selectedTab: TabSara = .home
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            // MAIN CONTENT
            Group {
                switch selectedTab {
                case .home:
                    HomeViewSara()
                    
                case .calendar:
                    ProgramView()
                    
                case .artists:
                    GameView() // egentlig bør det være ArtistView her
                    
                case .map:
                    MapView()
                    
                case .settings:
                    SettingsView()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            // DIN TABBAR
            TabBarSara(selectedTab: $selectedTab)
                .padding(.bottom, 8)
        }
    }
}

#Preview {
    RootViewSara()
}
