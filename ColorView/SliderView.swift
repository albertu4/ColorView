//
//  SliderView.swift
//  ColorView
//
//  Created by Михаил Иванов on 19.05.2022.
//

import SwiftUI

struct SliderView: View {
    @Binding var value: Double
    @Binding var rgbValue: String
    
    let color: Color
    let action: (Double) -> Void
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
                .foregroundColor(.black)
                .frame(width: 50)
            
            Slider(value: $value, in: 0...255, step: 1)
                .onChange(of: value, perform: action)
                .tint(color)
            
            TextField("", text: $rgbValue)
                .textFieldStyle(.roundedBorder)
                .frame(width: 50)
                .keyboardType(.decimalPad)
            
        }
    }
}
