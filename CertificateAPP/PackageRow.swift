//
//  PackageRow.swift
//  CertificateAPP
//
//  Created by Shotiko Klibadze on 02.05.23.
//

import Foundation

import SwiftUI

struct PackageRow: View {

    var package: Package

    var body: some View {
        VStack(alignment: .leading) {
            Link(destination: URL(string:package.link)!) {
                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)),Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .frame(height: 20)
                    .mask(Text(package.title)
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .textCase(.uppercase)
                        .frame(maxWidth: .infinity, alignment: .leading))

            }
            Divider()
        }
    }
}

struct PackageRow_Previews: PreviewProvider {
    static var previews: some View {
        PackageRow(package: packagesData[0])
    }
}
