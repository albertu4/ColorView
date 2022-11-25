//
//  ColorValueText.swift
//  ColorView
//
//  Created by Михаил Иванов on 25.11.2022.
//

import SwiftUI

struct ColorValueText: View {
    let sliderValue: Double
    
    var body: some View {
        Text("\(lround(sliderValue))")
            .foregroundColor(.black)
            .frame(width: 50)
    }
}

struct ColorValueText_Previews: PreviewProvider {
    static var previews: some View {
        ColorValueText(sliderValue: 100)
    }
}
