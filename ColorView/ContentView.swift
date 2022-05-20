//
//  ContentView.swift
//  ColorView
//
//  Created by Михаил Иванов on 19.05.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redValue: Double = 10
    @State private var greenValue: Double = 100
    @State private var blueValue: Double = 10
    
    @State private var redString = ""
    @State private var greenString = ""
    @State private var blueString = ""
    
    var body: some View {
        
        ZStack {
            Color(.init(red: 40/255, green: 40/255, blue: 255, alpha: 1))
                .ignoresSafeArea()
            VStack {
                ColorWindow(redColor: $redValue, greenColor: $greenValue, blueColor: $blueValue)
                
                SliderView(value: $redValue, rgbValue: $redString, color: .red) {
                    redString = "\(redValue)"
                }
                
                SliderView(value: $greenValue, rgbValue: $greenString, color: .green) {
                    greenString = "\(greenValue)"
                }
                
                SliderView(value: $blueValue, rgbValue: $blueString, color: .blue) {
                    blueString = "\(blueValue)"
                }
            }
            .padding(EdgeInsets(top: 20, leading: 16, bottom: 300, trailing: 16))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
