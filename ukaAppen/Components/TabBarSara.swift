//
//  TabBarSara.swift
//  ukaAppen
//
//  Created by Sara Christine Gjerløw on 23/02/2026.
//

import SwiftUI

struct TabBarSara: View {
    
    @Binding var selectedTab: TabSara
    
    var body: some View {
        HStack {
            ForEach(TabSara.allCases) { tab in
                Button {
                    selectedTab = tab
                } label: {
                    VStack(spacing: 6) {
                        
                        Image(systemName: tab.systemIcon)
                            .font(.system(size: 22, weight: .semibold))
                            .foregroundColor(.white)
                        
                        if selectedTab == tab {
                            Text(tab.rawValue)
                                .font(.custom("DMSans-Bold", size: 12))
                                .foregroundColor(.white)
                        }
                    }
                    .frame(maxWidth: .infinity)
                }
                .buttonStyle(.plain)
            }
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 14)
        .background(
            RoundedRectangle(cornerRadius: 28, style: .continuous)
                .fill(Color("UKAOrangeLight").opacity(0.65))
        )
        .padding(.horizontal, 18)
    }
}
