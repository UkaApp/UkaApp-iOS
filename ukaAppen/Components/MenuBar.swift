//
//  menuBar.swift
//  ukaAppen
//
//  Created by Kasper Karlsen on 05/02/2026.
//

import SwiftUI

struct MenuBar: View {

    @EnvironmentObject var appState: AppState

    var body: some View {
        HStack {

            menuButton(icon: "house.fill", tab: .home)
                .font(.system(size: 22, weight: .semibold))
            menuButton(icon: "calendar", tab: .program)
                .font(.system(size: 22, weight: .semibold))
            menuButton(icon: "tram", tab: .transport)
                .font(.system(size: 22, weight: .semibold))
            menuButton(icon: "map", tab: .map)
                .font(.system(size: 22, weight: .semibold))
            menuButton(icon: "gamecontroller", tab: .game)
                .font(.system(size: 22, weight: .semibold))
            menuButton(icon: "gear", tab: .settings)
                .font(.system(size: 22, weight: .semibold))
            // menuButton(icon: "person.fill", tab: .profile)
        }
        .frame(height: 100)
        .background(Color("UKAOrange"))
    }

    private func menuButton(icon: String, tab: Tab) -> some View {
        Button {
            withAnimation(.spring(response: 0.25, dampingFraction: 0.7)) {
                appState.selectedTab = tab
            }
        } label: {

            Image(systemName: icon)
                .font(.system(
                    size: appState.selectedTab == tab ? 28 : 22,
                    weight: .semibold
                ))
                .foregroundColor(
                    appState.selectedTab == tab
                    ? .white
                    : .white.opacity(0.6)
                )
                .scaleEffect(appState.selectedTab == tab ? 1.1 : 1.0)
                .frame(maxWidth: .infinity)
        }
    }
}
