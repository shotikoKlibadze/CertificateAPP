//
//  PrimaryButton.swift
//  CertificateAPP
//
//  Created by Shotiko Klibadze on 02.05.23.
//

import SwiftUI

struct PrimaryButton: View {

    @Environment (\.colorScheme) var colorScheme: ColorScheme
    var text: String = "Contact Support"

    var body: some View {
        if colorScheme == .light {
            ligtModeButton
        } else {
            darkModeButton
        }
    }

    var ligtModeButton: some View {
        VStack{
            Text(text)
                .font(.headline)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 50)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)) , Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))]), startPoint: .top, endPoint: .bottom)
        )
        .cornerRadius(16)
        .foregroundColor(.white)
    }

    var darkModeButton: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .frame(height: 50)
                .angularGradientGlow(colors: [Color(#colorLiteral(red: 0.3843137255, green: 0.5176470588, blue: 1, alpha: 1)), Color(#colorLiteral(red: 1, green: 0.4470588235, blue: 0.7137254902, alpha: 1)), Color(#colorLiteral(red: 0.8509803922, green: 0.6862745098, blue: 0.8509803922, alpha: 1)), Color(#colorLiteral(red: 0.5921568627, green: 0.8509803922, blue: 0.8823529412, alpha: 1)), Color(#colorLiteral(red: 0.3843137255, green: 0.5176470588, blue: 1, alpha: 1))])
//                .if(!isLiteMode, transform: { view in
//                    view.blur(radius: 8)
//                })

            Text(text)
                .linearGradientBackground(colors: [Color(#colorLiteral(red: 0.6196078431, green: 0.6784313725, blue: 1, alpha: 1)), Color(#colorLiteral(red: 1, green: 0.5607843137, blue: 0.9803921569, alpha: 1))])
                .font(.headline)
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(Color(#colorLiteral(red: 0.1019607843, green: 0.07058823529, blue: 0.2431372549, alpha: 1)).opacity(0.9))
                .cornerRadius(16)
                .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.white, lineWidth: 1).blendMode(.overlay))

        }
        .frame(height: 50)
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton()
    }
}
