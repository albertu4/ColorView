//
//  ColorWindow.swift
//  ColorView
//
//  Created by Михаил Иванов on 20.05.2022.
//

import SwiftUI

struct ColorWindow: View {
    let redColor: Double
    let greenColor: Double
    let blueColor: Double
    
    var body: some View {
        Rectangle()
            .frame(height: 150)
            .foregroundColor(Color(.sRGB, red: redColor/255, green: greenColor/255, blue: blueColor/255))
        
            .cornerRadius(30)
            .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.white, lineWidth: 5))
    }
}

struct ColorWindow_Previews: PreviewProvider {
    static var previews: some View {
        ColorWindow(redColor: 100, greenColor: 50, blueColor: 100)
    }
}
