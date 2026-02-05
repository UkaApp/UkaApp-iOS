//
//  AppState.swift
//  ukaAppen
//
//  Created by Kasper Karlsen on 05/02/2026.
//

import SwiftUI
import Combine

final class AppState: ObservableObject {
    @Published var selectedTab: Tab = .home
}
