//
//  ColorValueTextField.swift
//  ColorView
//
//  Created by Михаил Иванов on 25.11.2022.
//

import SwiftUI

struct ColorValueTextField: View {
    @Binding var sliderTextValue: String
    @Binding var sliderValue: Double
    @FocusState private var isFocused: Bool
    
    @State private var alertPresented = false
    
    var body: some View {
        TextField("", text: $sliderTextValue)
            .focused($isFocused)
            .onChange(of: isFocused) { _ in
                withAnimation {
                    checkValue()
                }
            }
            .textFieldStyle(.roundedBorder)
            .frame(width: 50)
            .keyboardType(.numberPad)
            .alert("Incorrect value", isPresented: $alertPresented, actions: {}) {
                Text("Input within 0 and 255")
            }
    }
    
    private func checkValue() {
        if let value = Int(sliderTextValue), (0...255).contains(value) {
            sliderValue = Double(value)
            return
        }
        alertPresented.toggle()
        sliderTextValue = "0"
        sliderValue = 0
    }
}

struct ColorValueTextField_Previews: PreviewProvider {
    static var previews: some View {
        ColorValueTextField(sliderTextValue: .constant("10"), sliderValue: .constant(10))
    }
}
