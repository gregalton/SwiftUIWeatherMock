//
//  ContentView.swift
//  SwiftUIWeatherMock
//
//  Created by Greg Alton on 3/21/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack {
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 10) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("68°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
