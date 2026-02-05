//
//  ContentView.swift
//  ukaAppen
//
//  Created by Kasper Karlsen on 21/09/2025.
//

import SwiftUI
import Combine


struct CountdownView: View {
    
    // Choose date for countdown
    private let targetDate = Calendar.current.date(from: DateComponents(
        year: 2026, month: 10, day: 10, hour: 0, minute: 0, second: 0
    ))!

    @State private var days = 0
    @State private var hours = 0
    @State private var minutes = 0
    @State private var seconds = 0
    @State private var isFinished = false

    private let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        ZStack {
            Color("UKAOrange").ignoresSafeArea()

            VStack {
                Spacer(minLength: 40)

                // Tittel-blokk (stor som på bildet)
                VStack(spacing: 2) {
                    Text("UKA i Ås")
                        .font(.custom("Poppins-BoldItalic", size: 64))
                        .foregroundColor(Color("NeutralCream"))

                    Text("2026")
                        .font(.custom("Poppins-BoldItalic", size: 40))
                        .foregroundColor(Color("NeutralCream"))
                }

                Spacer().frame(height: 70)

                // "Starter om ..."
                Text("Starter om ...")
                    .font(.custom("DMSans-Bold", size: 22))
                    .foregroundColor(Color("NeutralCream"))

                Spacer().frame(height: 20)

                // Nedtelling (4 kolonner)
                if isFinished {
                    Text("Endelig UKA!!!")
                        .font(.custom("DMSans-Bold", size: 30))
                        .foregroundColor(Color("NeutralCream"))
                } else {
                    HStack(spacing: 36) {
                        CountdownNumber(value: days)
                        CountdownNumber(value: hours)
                        CountdownNumber(value: minutes)
                        CountdownNumber(value: seconds)
                    }
                    .foregroundColor(Color("NeutralCream"))
                    .monospacedDigit()
                }

                Spacer()

                // Presentert av + logo nederst
                VStack(spacing: 14) {
                    Text("Presentert av")
                        .font(.custom("DMSans-Bold", size: 22))
                        .foregroundColor(Color("NeutralCream"))

                    // Bytt "SponsorLogo" til navnet på bildet ditt i Assets
                    Image("main_sponsor_img")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 70)
                }

                Spacer(minLength: 30)
            }
            .padding(.horizontal, 24)
            .onAppear { updateCountdown() }
            .onReceive(timer) { _ in updateCountdown() }
        }
    }

    private func updateCountdown() {
        let now = Date()
        let diff = targetDate.timeIntervalSince(now)

        if diff > 0 {
            isFinished = false
            let total = Int(diff)

            days = total / 86400
            hours = (total % 86400) / 3600
            minutes = (total % 3600) / 60
            seconds = total % 60
        } else {
            isFinished = true
        }
    }
}

private struct CountdownNumber: View {
    let value: Int

    var body: some View {
        Text(String(format: "%02d", value))
            .font(.custom("Poppins-BoldItalic", size: 44))
    }
}
    
#Preview {
    CountdownView()
}
    
