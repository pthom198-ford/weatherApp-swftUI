//
//  WeatherButton.swift
//  WeatherApp-SwiftUI
//
//  Created by Piers Thompon on 08/04/2021.
//

import Foundation
import SwiftUI

struct WeatherButton: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color
    var body: some View {
        Text(title)
            .frame(width: 200, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .font(.system(size: 24, weight: .bold, design: .default))
            .background(backgroundColor)
            .foregroundColor(textColor)
            .cornerRadius(10)
    }
}
