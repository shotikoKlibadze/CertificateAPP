//
//  ContentView.swift
//  CertificateAPP
//
//  Created by Shotiko Klibadze on 01.05.23.
//

import SwiftUI

struct ContentView: View {

    @State private var contentOffset = CGFloat(0)

    var body: some View {

        NavigationStack {
            ZStack(alignment: .top) {
                TrackableScrollView { offset in
                    contentOffset = offset.y
                    print("offset", contentOffset)

                } content: {
                    Text("Hello, world!")
                        .padding()
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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
