//
//  Repeating_RepeatForever_AutoReverses.swift
//  Animations
//
//  Created by HubertMac on 22/08/2023.
//

import SwiftUI

struct Repeating_RepeatForever_AutoReverses: View {
    
    @State private var start = false
    
    var body: some View {
        VStack {
            
            HeaderView("Repeating", subtitle: "Repeat Forever: No Auto-Reverse", desc: "There is an optional autoreverses parameter that is set to true by default. Let's set it goes one direction.", back: .green, textColor: .primary)
            
            Spacer()
            
            Button("Start") {
                start.toggle()
            }
            .font(.title)
            .foregroundColor(.white)
            .padding()
            .background(RoundedRectangle(cornerRadius: 8)
                .fill(Color.green))
            .overlay(RoundedRectangle(cornerRadius: 8)
                .stroke(.green, lineWidth: 4)
                .opacity(start ? 0 : 1)
                .scaleEffect(start ? 2 : 1)
                )
            .animation(.easeOut(duration: 0.6).repeatForever(autoreverses: false), value: start)
            
            Spacer()
        }
    }
}

struct Repeating_RepeatForever_AutoReverses_Previews: PreviewProvider {
    static var previews: some View {
        Repeating_RepeatForever_AutoReverses()
    }
}
