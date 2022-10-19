//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by 19543442 on 19.10.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ColorCircleView(circle: .red)
            ColorCircleView(circle: .yellow)
            ColorCircleView(circle: .green)
            Spacer()
            Button {
                ColorCircleView(circle: .red)
                    .opacity(1)
            } label: {
                Image(systemName: "Clock")
                Text("Start")
                    .font(.title)
            }
            .cornerRadius(10)
            .padding()
            .foregroundColor(Color.white)
            .background(Color.background)
        }
    }
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
