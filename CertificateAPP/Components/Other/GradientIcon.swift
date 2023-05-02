//
//  GradientIcon.swift
//  CertificateAPP
//
//  Created by Shotiko Klibadze on 01.05.23.
//

import SwiftUI

struct GradientIcon: View {

    var icon: String = "questionmark"

    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.red, .blue]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .mask(Image(systemName: icon).font(.system(size: 17)))
        .background(Color.black.opacity(0.6))
        .frame(width: 36, height: 36)
        .mask(RoundedRectangle(cornerRadius: 12, style: .continuous))
        .overlay(RoundedRectangle(cornerRadius: 12,
                                  style: .continuous).stroke(lineWidth: 1).foregroundColor(.white).blendMode(.overlay))

    }
}

struct GradientIcon_Previews: PreviewProvider {
    static var previews: some View {
        GradientIcon()
    }
}
