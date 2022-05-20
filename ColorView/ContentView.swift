//
//  ContentView.swift
//  ColorView
//
//  Created by Михаил Иванов on 19.05.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redValue: CGFloat = 10
    @State private var greenValue: CGFloat = 20
    @State private var blueValue: CGFloat = 30
    
    @State private var redString = ""
    @State private var greenString = ""
    @State private var blueString = ""
    
    var body: some View {
        
        ZStack {
            Color(.init(red: 40/255, green: 40/255, blue: 255, alpha: 1))
                .ignoresSafeArea()
            
            VStack {
                ColorWindow(redColor: $redValue, greenColor: $greenValue, blueColor: $blueValue)
                
                Spacer()
                
                SliderView(value: $redValue, rgbValue: $redString, color: .red) {_ in
                    redString = String(format: "%.f", redValue)

                }
                
                SliderView(value: $greenValue, rgbValue: $greenString, color: .green) {_ in
                    greenString = String(format: "%.f", greenValue)
                }
                
                SliderView(value: $blueValue, rgbValue: $blueString, color: .blue) {_ in
                    blueString = String(format: "%.f", blueValue)
                }
            }
            .padding(EdgeInsets(top: 20, leading: 16, bottom: 350, trailing: 16))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
