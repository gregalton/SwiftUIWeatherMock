//
//  BackgroundView.swift
//  SwiftUIWeatherMock
//
//  Created by Greg Alton on 3/22/24.
//

import SwiftUI

struct BackgroundView: View {
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(colors: [topColor, bottomColor], startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView(topColor: .blue, bottomColor: .white)
}
