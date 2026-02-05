//
//  RootView.swift
//  ukaAppen
//
//  Created by Kasper Karlsen on 05/02/2026.
//


import SwiftUI

struct RootView: View {

    @EnvironmentObject var appState: AppState

    var body: some View {
        ZStack {
            Color("UKAOrange")
                .ignoresSafeArea()
            
            content
                    .frame(maxWidth: .infinity,
                           maxHeight: .infinity,
                           alignment: .top)
            
            .safeAreaInset(edge: .bottom) {
                MenuBar()
            }
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

        //case .tickets:
        //    TicketsView()

        //case .notifications:
        //    NotificationsView()

        //case .profile:
        //    ProfileView()
        }
    }
}
