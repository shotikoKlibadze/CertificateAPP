//
//  TrackableScrollView.swift
//  CertificateAPP
//
//  Created by Shotiko Klibadze on 01.05.23.
//

import SwiftUI

struct TrackableScrollView<Content: View>: View {

    let axes: Axis.Set
    let offsetChange: (CGPoint) -> Void
    let content: Content

    init(axes: Axis.Set = .vertical, offsetChange: @escaping (CGPoint) -> Void
         = { _ in }, @ViewBuilder content: () -> Content) {
        self.axes = axes
        self.offsetChange = offsetChange
        self.content = content()
    }

    var body: some View {
        SwiftUI.ScrollView(axes) {
            GeometryReader { geometry in
                Color.clear.preference(key: ScrollOffsetPreferenceKey.self,
                                       value: geometry.frame(in: .named("scrollView")).origin)
            }
            .frame(width: 0, height: 0)

            content

        }
        .coordinateSpace(name: "scrollView")
        .onPreferenceChange(ScrollOffsetPreferenceKey.self, perform: offsetChange)
    }
}

private struct ScrollOffsetPreferenceKey: PreferenceKey {
    static var defaultValue: CGPoint = .zero

    static func reduce(value: inout CGPoint, nextValue: () -> CGPoint) {
    }
}
