//
//  Repeating_RepeatCount.swift
//  Animations
//
//  Created by HubertMac on 16/08/2023.
//

import SwiftUI

struct Repeating_RepeatCount: View {
    
    @State var start = false

    var body: some View {
        VStack {
            HeaderView("Repeating", subtitle: "Repeat Count ", desc: "You might want an animation to repeat only a certainnumber of times ", back: .green, textColor: .primary)
            Spacer()
            
            Button("Start") {start.toggle()}
                .font(.largeTitle)
                .padding()
                .foregroundColor(.white)
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.green))
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.green, lineWidth: 4)
                        .scaleEffect(start ? 2 : 1)
                        .opacity(start ? 0 : 1))
                .animation(.easeOut(duration: 0.6).repeatCount(3), value: start) // Repeat 3 
            
            Spacer()
            
        }
    }
}

struct Repeating_RepeatCount_Previews: PreviewProvider {
    static var previews: some View {
        Repeating_RepeatCount()
    }
}
