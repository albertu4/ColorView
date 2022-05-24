//
//  ContentView.swift
//  ColorView
//
//  Created by Михаил Иванов on 19.05.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redValue: Double = 10
    @State private var greenValue: Double = 20
    @State private var blueValue: Double = 30
    
    @State private var redString = "10"
    @State private var greenString = "20"
    @State private var blueString = "30"
    
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
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        Button("Done") {
                            redValue = CGFloat(Int(redString) ?? 0)
                            greenValue = CGFloat(Int(greenString) ?? 0)
                            blueValue = CGFloat(Int(blueString) ?? 0)
                            UIApplication.shared.keyWindow?.endEditing(true) //Used deprecated func
                        }
                    }
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
