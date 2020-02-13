//
//  SwiftUIView.swift
//  DebugSwiftUI
//
//  Created by Venkatnarayansetty, Badarinath on 2/12/20.
//  Copyright © 2020 Venkatnarayansetty, Badarinath. All rights reserved.
//

import Foundation
import SwiftUI

#if canImport(SwiftUI) && !arch(arm) && os(iOS) && !os(watchOS)
@available(iOS 13.0, *)
struct SwiftUIView: View {
    var body: some View {
        VStack {
            Text("Title")
                .font(.system(size: 17, weight: Font.Weight.bold))
                .padding(.horizontal, 16)
                .modifier(CommonModifier())
            
            Text("Sub Title")
                .padding()
                .font(.system(size: 15))
                .modifier(CommonModifier())
            Spacer()
        }
    }
}

@available(iOS 13.0, *)
struct CommonModifier: ViewModifier {
    func body(content: _ViewModifier_Content<CommonModifier>) -> some View {
        content.foregroundColor(Color.black)
            .multilineTextAlignment(TextAlignment.center)
    }
}

@available(iOS 13.0, *)
struct ImageModifier: ViewModifier {
    var imageHeight:CGFloat
    func body(content: Content) -> some View {
        content
            .aspectRatio(contentMode: ContentMode.fit)
            .frame(height:imageHeight)
            .padding(EdgeInsets(top: 24, leading: 0, bottom: 14, trailing: 0))
    }
}
#endif
