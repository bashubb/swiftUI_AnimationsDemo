//
//  Repeating_WithDelay.swift
//  Animations
//
//  Created by HubertMac on 22/08/2023.
//

import SwiftUI

struct Repeating_WithDelay: View {
    
    @State private var start = false
    
    var body: some View {
        VStack {
            HeaderView("Repeating", subtitle: "Repeat With Delay", desc: "You canadd a delay between each repeat of the animation. You want to add the delay modifier BEFORE the repeat modifier.", back: .green, textColor: .primary)
            
            Spacer()
            
            Button("Start") {
                start.toggle()
            }
            .font(.title)
            .foregroundColor(.white)
            .padding()
            .background(RoundedRectangle(cornerRadius: 8)
                .fill(Color.green))
            .overlay(RoundedRectangle(cornerRadius: 8).stroke(.green, lineWidth: 2)
                .opacity(start ? 0 : 1)
                .scaleEffect(start ? 2 : 1))
            .animation(.easeOut(duration: 0.6).delay(1).repeatForever(autoreverses: false), value: start)
                
            
            Spacer()
        }
    }
}

struct Repeating_WithDelay_Previews: PreviewProvider {
    static var previews: some View {
        Repeating_WithDelay()
    }
}
