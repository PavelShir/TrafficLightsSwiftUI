//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by 19543442 on 19.10.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var opacityRed = 0.5
    @State private var opacityYellow = 0.5
    @State private var opacityGreen = 0.5
    
    var body: some View {
        VStack {
            ColorCircleView(circle: .red).opacity(opacityRed)
            ColorCircleView(circle: .yellow).opacity(opacityYellow)
            ColorCircleView(circle: .green).opacity(opacityGreen)
            Spacer()
            Button {
                changeOpacity()
            } label: {
                Image(systemName: "Clock")
                Text("Start")
                    .font(.title)
                    .foregroundColor(Color.white)
            }
            .padding()
            .background(Color.brown)
            .cornerRadius(10)
        }
    }
    
    private func changeOpacity(){
        if opacityRed < 1.0 && opacityYellow < 1.0 && opacityGreen < 1.0 {
            opacityRed = 1.0
        } else if opacityRed == 1.0 {
            opacityRed = 0.5
            opacityYellow = 1.0
        } else if opacityYellow == 1.0 {
            opacityYellow = 0.5
            opacityGreen = 1.0
        } else if opacityGreen == 1.0 {
            opacityGreen = 0.5
            opacityRed = 1.0
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
