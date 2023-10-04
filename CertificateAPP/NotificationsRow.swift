//
//  NotificationsRow.swift
//  CertificateAPP
//
//  Created by Shotiko Klibadze on 04.05.23.
//

import SwiftUI

struct NotificationsRow: View {

    @State private var subscribed: Bool = true
    var body: some View {
        Toggle(isOn: $subscribed) {
            HStack(spacing: 12) {
                GradientIcon(icon: "bell.fill")
                VStack(alignment: .leading) {
                    Text("Notify me of new content")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    Text("Max once a week.")
                        .font(.caption2)
                        .opacity(0.7)
                }
            }
        }
        .tint(.blue)
    }
}

struct NotificationsRow_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsRow()
    }
}
