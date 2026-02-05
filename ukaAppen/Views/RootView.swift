//
//  RootView.swift
//  ukaAppen
//
//  Created by Kasper Karlsen on 05/02/2026.
//


import SwiftUI

var targetDate = Calendar.current.date(from: DateComponents(
    year: 2026, month: 10, day: 10, hour: 0, minute: 0, second: 0
))!


struct RootView: View {

    @EnvironmentObject var appState: AppState
    @State private var showCountdown: Bool

    init() {
        _showCountdown = State(initialValue: Date() < targetDate)
    }
    
    var body: some View {
        if showCountdown {
            CountdownView(targetDate: targetDate, showCountdown: $showCountdown)
        } else {
            mainApp
        }
        
    }
    
    private var isCountdownActive: Bool {
        Date() < targetDate
    }
    
    private var mainApp: some View {
        ZStack(alignment: .bottom) {

            Color("UKAOrange")
                .ignoresSafeArea()

            content
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .gesture(
            DragGesture()
                .onEnded { value in
                    handleSwipe(value: value)
                }
        )
        .safeAreaInset(edge: .bottom) {
            MenuBar()
        }
        .animation(nil, value: appState.selectedTab)
    
    }


    @ViewBuilder
    private var content: some View {
        switch appState.selectedTab {
        case .home:
            HomeView()

        case .program:
            ProgramView()
            
        case .transport:
            TransportView()
            
        case .map:
            MapView()

        case .game:
            GameView()

        case .settings:
            SettingsView()

        //case .profile:
        //    ProfileView()
        }
    }
    
    private func handleSwipe(value: DragGesture.Value) {
        let threshold: CGFloat = 50

        if value.translation.width < -threshold {
            goToNextTab()
        }

        if value.translation.width > threshold {
            goToPreviousTab()
        }
    }
    
    private func goToNextTab() {
        guard let index = Tab.allCases.firstIndex(of: appState.selectedTab),
              index < Tab.allCases.count - 1 else { return }

        withAnimation(.easeInOut) {
            appState.selectedTab = Tab.allCases[index + 1]
        }
    }

    private func goToPreviousTab() {
        guard let index = Tab.allCases.firstIndex(of: appState.selectedTab),
              index > 0 else { return }

        withAnimation(.easeInOut) {
            appState.selectedTab = Tab.allCases[index - 1]
        }
    }
}
