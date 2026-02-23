import SwiftUI
import UIKit

struct HomeView: View {

    // TODO: Replace with official colors when you get them
    private let backgroundHex = "#FF8D00" // same orange as ContentView example
    private let cardHex = "#F7B577"       // placeholder (soft orange)
    private let titleHex = "#FFFFFF"

    var body: some View {

        ZStack {

            Color(hex: backgroundHex)
                .ignoresSafeArea()

            VStack(alignment: .leading, spacing: 18) {

                headerArt

                Text("Ukens program:")
                    .font(.custom("BlennyTrial-Black", size: 34))
                    .foregroundColor(Color(hex: titleHex))
                    .padding(.horizontal, 24)

                RoundedRectangle(cornerRadius: 22)
                    .fill(Color(hex: cardHex).opacity(0.55))
                    .frame(height: 420)
                    .shadow(color: Color.black.opacity(0.12), radius: 10, x: 0, y: 6)
                    .padding(.horizontal, 24)

                Spacer(minLength: 0)
            }
            .padding(.top, 8)
            .padding(.bottom, 110) // space for TabBar later
        }
    }

    private var headerArt: some View {
        Group {
            if let _ = UIImage(named: "HomeHeaderArt") {
                Image("HomeHeaderArt")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal, 0)
            } else {
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.black.opacity(0.12))
                    .frame(height: 220)
                    .overlay(
                        Text("Legg inn HomeHeaderArt i Assets")
                            .font(.custom("BlennyTrial-Black", size: 18))
                            .foregroundColor(.white.opacity(0.9))
                    )
                    .padding(.horizontal, 24)
            }
        }
    }
}

#Preview {
    HomeView()
}
