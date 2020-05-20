//
//  ContentView.swift
//  ActivityRingRaised
//
//  Created by ramil on 20.05.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let phoneBackground = Color.black.opacity(0.7)
    let ringGradient = LinearGradient(gradient: Gradient(colors: [Color.pink, Color.red]), startPoint: .leading, endPoint: .trailing)
    
    var body: some View {
        ZStack {
            phoneBackground
                .edgesIgnoringSafeArea(.all)
            
            Circle()
                .stroke(ringGradient, style: StrokeStyle(lineWidth: 50, lineCap: .round, lineJoin: .round))
                .frame(width: 300, height: 300)
            
            Circle()
                .trim(from: 0, to: 1/9999)
                .stroke(Color.pink, style: StrokeStyle(lineWidth: 50, lineCap: .round, lineJoin: .round))
                .frame(width: 300, height: 300)
                .rotationEffect(.degrees(-90))
                .shadow(radius: 3, x: 4, y: 0)
                .opacity(0.9)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
