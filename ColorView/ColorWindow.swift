//
//  ColorWindow.swift
//  ColorView
//
//  Created by Михаил Иванов on 20.05.2022.
//

import SwiftUI

struct ColorWindow: View {
    @Binding var redColor: Double
    @Binding var greenColor: Double
    @Binding var blueColor: Double
    
    var body: some View {
        Rectangle()
            .frame(height: 150)
            .foregroundColor(Color(.sRGB, red: redColor/255, green: greenColor/255, blue: blueColor/255))
        
            .cornerRadius(30)
            .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.white, lineWidth: 5))
    }
}
