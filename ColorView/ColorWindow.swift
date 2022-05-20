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
            .foregroundColor(Color(.sRGB, red: redColor, green: greenColor, blue: blueColor, opacity: 1))
        
            .overlay(Rectangle().stroke(Color.white, lineWidth: 10))
            .cornerRadius(30)
    }
}

//struct ColorWindow_Previews: PreviewProvider {
//    static var previews: some View {
//        ColorWindow(redColor: <#Binding<Double>#>, greenColor: <#Binding<Double>#>, blueColor: <#Binding<Double>#>)
//    }
//}
