//
//  FlatGlassView.swift
//  WhiteMovie
//
//  Created by 吉田晃大 on 2023/04/19.
//

import SwiftUI

//透過させるViewModifier
struct FlatGlassView : ViewModifier {
    func body(content: Content) -> some View {
        if #available(iOS 15.0, *) {
            content
                .frame(width: 100, height: 50)
                .background(.ultraThinMaterial)
                .cornerRadius(14)
        } else {
            // Fallback on earlier versions
            content
                .padding()
                .frame(height: 50)
                .cornerRadius(14)
        }
    }
}
