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
        ZStack {
            Color("UKAOrange")
                .ignoresSafeArea()
            
            ZStack {
                content
            }
            .frame(maxWidth: .infinity,
                   maxHeight: .infinity,
                   alignment: .top)
            .transition(.opacity)
            .animation(.easeInOut(duration: 0.15), value: appState.selectedTab)
            
            .safeAreaInset(edge: .bottom) {
                MenuBar()
            }
            .animation(nil, value: appState.selectedTab)
        }
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

        //case .notifications:
        //    NotificationsView()

        //case .profile:
        //    ProfileView()
        }
    }
}
