//
//  menuBar.swift
//  ukaAppen
//
//  Created by Kasper Karlsen on 05/02/2026.
//

import SwiftUI

struct MenuBar: View {

    @EnvironmentObject var appState: AppState

    private let items: [(Tab, String)] = [
        (.HomeView, "house.fill"),
        (.program, "calendar"),
        (.tickets, "ticket.fill"),
        (.notifications, "bell.fill"),
        (.profile, "person.fill")
    ]

    var body: some View {
        HStack {
            ForEach(items, id: \.0) { tab, icon in
                Spacer()

                Button {
                    withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                        appState.selectedTab = tab
                    }
                } label: {
                    VStack(spacing: 6) {
                        Image(systemName: icon)
                            .font(.system(size: 22, weight: .semibold))

                        if appState.selectedTab == tab {
                            Circle()
                                .frame(width: 6, height: 6)
                        }
                    }
                    .foregroundColor(
                        appState.selectedTab == tab
                        ? .white
                        : .white.opacity(0.5)
                    )
                }

                Spacer()
            }
        }
        .frame(height: 72)
        .background(
            Color.black.opacity(0.25).blur(radius: 10)
        )
        .background(Color("UKAOrange"))
    }
}
