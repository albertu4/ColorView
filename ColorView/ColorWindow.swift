//
//  ColorWindow.swift
//  ColorView
//
//  Created by Михаил Иванов on 20.05.2022.
//

import SwiftUI

struct ColorWindow: View {
    @Binding var redColor: CGFloat
    @Binding var greenColor: CGFloat
    @Binding var blueColor: CGFloat
    
    var body: some View {
        Rectangle()
            .frame(height: 150)
            .foregroundColor(Color(.sRGB, red: redColor/255, green: greenColor/255, blue: blueColor/255))
        
            .overlay(Rectangle().stroke(Color.white, lineWidth: 10))
            .cornerRadius(30)
    }
}

//struct ColorWindow_Previews: PreviewProvider {
//    static var previews: some View {
//        ColorWindow(redColor: <#Binding<Double>#>, greenColor: <#Binding<Double>#>, blueColor: <#Binding<Double>#>)
//    }
//}
