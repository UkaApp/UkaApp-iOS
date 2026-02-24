//
//  TabSara.swift
//  ukaAppen
//
//  Created by Sara Christine Gjerløw on 23/02/2026.
//

import SwiftUI

enum TabSara: String, CaseIterable, Identifiable {
    case home = "Hjem"
    case calendar = "Program" //program eller evt kalender?
    case artists = "Artister"
    case map = "Kart"
    case settings = "Innstillinger"
    
    var id: String { rawValue }
    
    var systemIcon: String {
        switch self {
        case .home: return "house"
        case .calendar: return "calendar"
        case .artists: return "music.mic"
        case .map: return "map"
        case .settings: return "gearshape"
        }
    }
}
