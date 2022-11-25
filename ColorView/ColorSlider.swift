//
//  ColorSlider.swift
//  ColorView
//
//  Created by Михаил Иванов on 19.05.2022.
//

import SwiftUI

struct ColorSlider: View {
    @Binding var value: Double
    @State private var textValue = ""
    
    let color: Color
    
    var body: some View {
        HStack {
            ColorValueText(sliderValue: value)
            
            Slider(value: $value, in: 0...255, step: 1)
                .tint(color)
                .onChange(of: value) { newValue in
                    textValue = String(lround(newValue))}
            
            ColorValueTextField(sliderTextValue: $textValue, sliderValue: $value)
        }
        .onAppear {
            textValue = String(lround(value))
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSlider(value: .constant(50), color: .blue)
    }
}
