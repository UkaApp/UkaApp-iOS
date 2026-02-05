//
//  PushNotificationsView.swift
//  ukaAppen
//
//  Created by Marte Tangen on 10/01/2026.
//

import SwiftUI

struct PushNotificationsView: View {
    var body: some View {
        ZStack {
            Color("UKAOrange")
                .ignoresSafeArea()

            VStack(alignment: .leading, spacing: 40) {
                Text("Ikke gå glipp av noe!")
                    .font(.custom("DMSans-Bold", size: 27))
                    .foregroundColor(Color("NeutralCream"))

                Text("Med push-varsler får du påminnelser om konserter og viktige hendelser under UKA.")
                    .font(.custom("DMSans-Regular", size: 20))
                    .foregroundColor(Color("NeutralCream"))
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)

                Button {
                    // TODO: request notification permission
                } label: {
                    Text("Ja takk, send meg varslinger")
                        .font(.custom("DMSans-Regular", size: 20))
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color("NeutralCream"))
                        .foregroundColor(Color("UKAOrange"))
                        .cornerRadius(12)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 24)
        }
    }
}

#Preview {
    NavigationStack {
        PushNotificationsView()
    }
}

