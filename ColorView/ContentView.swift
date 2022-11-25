//
//  ContentView.swift
//  ColorView
//
//  Created by Михаил Иванов on 19.05.2022.
//

import SwiftUI

enum Field: Hashable {
    case red, green, blue
}

struct ContentView: View {
    @State private var redValue = Double.random(in: 0...255)
    @State private var greenValue = Double.random(in: 0...255)
    @State private var blueValue = Double.random(in: 0...255)
    
    @FocusState private var focusedField: Field?
    
    var body: some View {
        
        ZStack {
            Color(.init(red: 40/255, green: 40/255, blue: 255, alpha: 1))
                .ignoresSafeArea()
            
            VStack {
                ColorWindow(redColor: redValue, greenColor: greenValue, blueColor: blueValue)
                
                VStack {
                    ColorSlider(value: $redValue, color: .red)
                        .focused($focusedField, equals: .red)
                    ColorSlider(value: $greenValue, color: .green)
                        .focused($focusedField, equals: .green)
                    ColorSlider(value: $blueValue, color: .blue)
                        .focused($focusedField, equals: .blue)
                }
                .frame(height: 200)
                
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Button(action: previousField) {
                            Image(systemName: "chevron.up")
                        }
                        Button(action: nextField) {
                            Image(systemName: "chevron.down")
                        }
                        Spacer()
                        Button("Done") { focusedField = nil }
                    }
                }
                Spacer()
            }
            .padding()
        }
        .onTapGesture { focusedField = nil }
    }
    
    private func nextField() {
        switch focusedField {
        case .red:
            focusedField = .green
        case .green:
            focusedField = .blue
        default:
            focusedField = .red
        }
    }
    
    private func previousField() {
        switch focusedField {
        case .red:
            focusedField = .blue
        case .green:
            focusedField = .red
        default:
            focusedField = .green
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
