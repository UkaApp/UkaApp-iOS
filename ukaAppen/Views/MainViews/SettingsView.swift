//
//  SettingsView.swift
//  ukaAppen
//
//  Created by Kasper Karlsen on 05/02/2026.
//

import SwiftUI

struct SettingsView: View {

    enum Appearance: String, CaseIterable {
        case system = "Følg system"
        case light = "Lys"
        case dark = "Mørk"
    }

    @AppStorage("appearance") private var appearance: Appearance = .system
    @AppStorage("darkIcon") private var darkIcon = false

    var body: some View {

        Form {

            Section("Farge tema") {

                Picker("Appearance", selection: $appearance) {
                    ForEach(Appearance.allCases, id: \.self) { mode in
                        Text(mode.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }

            Section("App ikon") {

                Toggle("Bruk dark ikon", isOn: $darkIcon)
                    .onChange(of: darkIcon) { _, newValue in
                        setAppIcon(dark: newValue)
                    }
            }
        }
        .navigationTitle("Settings")

    }

    
    private var currentColorScheme: ColorScheme? {
        switch appearance {
        case .system:
            return nil
        case .light:
            return .light
        case .dark:
            return .dark
        }
    }

    
    private func setAppIcon(dark: Bool) {
        guard UIApplication.shared.supportsAlternateIcons else { return }

        UIApplication.shared.setAlternateIconName(
            dark ? "AppIconDark" : nil
        )
    }
}

#Preview {
    SettingsView()
}
