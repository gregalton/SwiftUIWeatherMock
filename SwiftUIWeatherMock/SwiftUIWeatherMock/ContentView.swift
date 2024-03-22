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
                
                Spacer(minLength: 100)
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "Tue", imageName: "cloud.sun.fill", temperature: 68)
                    
                    WeatherDayView(dayOfWeek: "Wed", imageName: "cloud.sun.fill", temperature: 70)
                    
                    WeatherDayView(dayOfWeek: "Thu", imageName: "cloud.fill", temperature: 69)
                    
                    WeatherDayView(dayOfWeek: "Fri", imageName: "cloud.sun.fill", temperature: 72)
                    WeatherDayView(dayOfWeek: "Fri", imageName: "cloud.rain.fill", temperature: 72)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 18, weight: .medium, design: .default))
                .foregroundColor(.white)
                .padding()
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
            
            Spacer()
            
        }
    }
}
