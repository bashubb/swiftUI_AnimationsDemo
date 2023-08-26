//
//  Repeating_RepeatForever.swift
//  Animations
//
//  Created by HubertMac on 22/08/2023.
//

import SwiftUI

struct Repeating_RepeatForever: View {
    
    @State private var start = false
    
    var body: some View {
        VStack {
            HeaderView("Repeating", subtitle: "Repeat Forever", desc: "You learned how to repeat a number of times, but what if you wanted to repeat forever once started? There's a modifier for that too!", back: .green, textColor: .primary )
            Spacer()
            
            Button("Start") {
                start.toggle()
            }
            .foregroundColor(.white)
            .padding(20)
            .background(RoundedRectangle(cornerRadius: 8).fill(Color.green))
            .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(.green, lineWidth: 3)
                        .scaleEffect(start ? 2 : 0)
                        .opacity(start ? 0 : 1)
                        .animation(.easeOut(duration: 0.6).repeatForever(), value: start ))
            
            
            
            Spacer()
        }
        .font(.title)
    }
}

struct Repeating_RepeatForever_Previews: PreviewProvider {
    static var previews: some View {
        Repeating_RepeatForever()
    }
}
