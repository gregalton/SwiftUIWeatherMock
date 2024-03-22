//
//  WeatherDayView.swift
//  SwiftUIWeatherMock
//
//  Created by Greg Alton on 3/22/24.
//

import SwiftUI

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


#Preview {
    WeatherDayView(dayOfWeek: "Tue", imageName: "cloud.sun.fill", temperature: 75)
}
