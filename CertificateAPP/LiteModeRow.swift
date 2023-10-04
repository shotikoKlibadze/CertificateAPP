//
//  LiteModeRow.swift
//  CertificateAPP
//
//  Created by Shotiko Klibadze on 04.05.23.
//

import SwiftUI

struct LiteModeRow: View {
    @AppStorage("isLiteMode") var isLiteMode: Bool = false

    var body: some View {
        Toggle(isOn: $isLiteMode, label: {
            HStack(spacing: 12) {
                GradientIcon(icon: "speedometer")

                VStack(alignment: .leading) {
                    Text("Lite Mode")
                        .font(.subheadline)
                        .fontWeight(.semibold)

                    Text("Better performance. Recommended for iPhone X and older.")
                        .font(.caption2)
                        .opacity(0.7)
                }
            }
        })
        .tint(.blue)
    }
}

struct LitModeRow_Previews: PreviewProvider {
    static var previews: some View {
        LiteModeRow()
    }
}
