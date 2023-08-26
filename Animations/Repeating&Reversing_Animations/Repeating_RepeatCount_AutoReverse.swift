//
//  Repeating_RepeatCount_AutoReverse.swift
//  Animations
//
//  Created by HubertMac on 18/08/2023.
//

import SwiftUI

struct Repeating_RepeatCount_AutoReverse: View {
    
    @State var start = false
    
    var body: some View {
        VStack {
            HeaderView("Repeating", subtitle: "Repeat Count Auto-Reverses", desc: "Auto-Reverse is true by default. It is an optional parameter that you can set to false.", back: .green
                       , textColor: .primary)
            
            Spacer()
            Button(start ? "Stop": "Start") {
                start.toggle()
            }
            .foregroundColor(.white)
            .font(.largeTitle)
            .padding()
            .background(RoundedRectangle(cornerRadius: 8).fill(Color.green))
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.green,lineWidth: 2)
                    .scaleEffect(start ? 2 : 1)
                    .opacity(start ? 0 : 1 )
                    .animation(.easeOut(duration: 0.6).repeatCount(3, autoreverses: false), value: start))
            
              
            Spacer()
            
        }
    }
}

struct Repeating_RepeatCount_AutoReverse_Previews: PreviewProvider {
    static var previews: some View {
        Repeating_RepeatCount_AutoReverse()
    }
}
