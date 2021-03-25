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
                    .padding(.bottom, 80)
                HStack(spacing: 18) {
                    WeatherTimeView(time: "Now", imageName: "cloud.fill", temperature: 8)
                    WeatherTimeView(time: "18", imageName: "cloud.fill", temperature: 7)
                    WeatherTimeView(time: "19", imageName: "cloud.fill", temperature: 7)
                    WeatherTimeView(time: "20", imageName: "cloud.fill", temperature: 6)
                    WeatherTimeView(time: "21", imageName: "cloud.rain.fill", temperature: 6)
                    WeatherTimeView(time: "22", imageName: "cloud.rain.fill", temperature: 6)
                    WeatherTimeView(time: "23", imageName: "cloud.rain.fill", temperature: 6)
                    WeatherTimeView(time: "24", imageName: "cloud.fill", temperature: 6)
                }

                VStack() {
                WeatherDayView(day: "Monday", imageName: "cloud.sun.fill", dayTemperature: 11, nightTemperature: 10)
                WeatherDayView(day: "Tuesday", imageName: "cloud.sun.fill", dayTemperature: 11, nightTemperature: 10)
                WeatherDayView(day: "Wednesday", imageName: "cloud.sun.fill", dayTemperature: 11, nightTemperature: 10)
                WeatherDayView(day: "Thursday", imageName: "cloud.sun.fill", dayTemperature: 11, nightTemperature: 10)
                WeatherDayView(day: "Friday", imageName: "cloud.sun.fill", dayTemperature: 11, nightTemperature: 10)
                }
                Spacer()
                Button {
                    print("tapped")
                } label: {
                    Text("Night Mode")
                        .frame(width: 200, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .font(.system(size: 24, weight: .bold, design: .default))
                        .background(Color.black)
                        .cornerRadius(10)
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

struct WeatherTimeView: View {
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

struct WeatherDayView: View {
    var day: String
    var imageName: String
    var dayTemperature: Int
    var nightTemperature: Int
    var body: some View {
        HStack(){
            Text(day)
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundColor(.white)
                .frame(width: 180, height: 30, alignment: .leading)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
            HStack(spacing: 20){
            Text("\(dayTemperature)")
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundColor(.white)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 30, alignment: .trailing)
            Text("\(nightTemperature)")
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundColor(.gray)
            }
        }
    }
}
