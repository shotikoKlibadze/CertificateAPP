//
//  ContentView.swift
//  CertificateAPP
//
//  Created by Shotiko Klibadze on 01.05.23.
//

import SwiftUI

struct ContentView: View {

    @Environment(\.colorScheme) var colorScheme: ColorScheme
    @State private var contentOffset = CGFloat(0)

    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                TrackableScrollView { offset in
                    contentOffset = offset.y
                    print("offset", contentOffset)
                    
                } content: {
                    content
                }
                VisualEffectBlur(blurStyle: .systemMaterial)
                    .opacity(contentOffset < -16 ? 1 : 0)
                    .animation(.easeIn)
                    .ignoresSafeArea()
                    .frame(height: 0)
            }
            .frame(maxHeight: .infinity, alignment: .top)
            .background(AccountBackground())
            .toolbar(.hidden)
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .tint(colorScheme == .dark ? .white : .purple)
    }

    var content: some View {
        VStack {
            VStack {
                NavigationLink { FAQView() } label: {
                    MenuRow()
                }

                Divider().background(Color.white.blendMode(.overlay))

                NavigationLink { PackagesView() } label: {
                    MenuRow(title: "SwiftUI Packages", leftIcon: "square.stack.3d.up.fill")
                }
                
                Divider().background(Color.white.blendMode(.overlay))
                
                Link(destination: URL(string: "www.youtu.com")!, label: {
                    MenuRow(title: "Youtube Channel", leftIcon: "play.rectangle.fill", rightIcon: "link")
                })
            }
            .padding(16)
            .background(Color("Background 1"))
            .background(VisualEffectBlur(blurStyle: .systemUltraThinMaterialDark))
            .overlay {
                RoundedRectangle(cornerRadius: 20, style: .continuous).stroke(.white, lineWidth: 1).blendMode(.overlay)

            }
            .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .padding(.top, 20)

            Text("Version 1.0.0")
                .padding()
                .font(.footnote)
        }
        .foregroundColor(.white)
        .padding(.top, 20)
        .padding(.horizontal, 20)
        .padding(.bottom, 20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
