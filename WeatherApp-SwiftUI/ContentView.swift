//
//  ContentView.swift
//  WeatherApp-SwiftUI
//
//  Created by Piers Thompon on 10/03/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.white, .gray, .blue]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 8) {
                Text("London")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                Text("Mostly Cloudy")
                    .foregroundColor(.white)
                Text("8°")
                    .font(.system(size: 80, weight: .medium, design: .default))
                    .foregroundColor(.white)
                Spacer()
                HStack(spacing: 18) {
                    WeatherDayView(time: "Now", imageName: "cloud.fill", temperature: 8)
                    WeatherDayView(time: "18", imageName: "cloud.fill", temperature: 7)
                    WeatherDayView(time: "19", imageName: "cloud.fill", temperature: 7)
                    WeatherDayView(time: "20", imageName: "cloud.fill", temperature: 6)
                    WeatherDayView(time: "21", imageName: "cloud.fill", temperature: 6)
                    WeatherDayView(time: "22", imageName: "cloud.fill", temperature: 6)
                    WeatherDayView(time: "23", imageName: "cloud.fill", temperature: 6)
                    WeatherDayView(time: "24", imageName: "cloud.fill", temperature: 6)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    var time: String
    var imageName: String
    var temperature: Int
    var body: some View {
        VStack {
            Text(time)
                .font(.system(size: 14, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}
