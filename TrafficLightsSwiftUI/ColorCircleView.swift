//
//  ColorCircleView.swift
//  TrafficLightsSwiftUI
//
//  Created by 19543442 on 19.10.2022.
//

import SwiftUI

struct ColorCircleView: View {
    let circle: Color
    
    var body: some View {
        VStack {
        Circle()
            .foregroundColor(circle)
            .opacity(0.5)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
            .shadow(radius: 10)
        
    }
        .padding()
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
       
        ColorCircleView(circle: .red)
        
    }
}
