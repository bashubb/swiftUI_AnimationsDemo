//
//  Value_Introduction.swift
//  Animations
//
//  Created by HubertMac on 27/08/2023.
//

import SwiftUI

struct Value_Introduction: View {
    
    @State var change = false
    
    var body: some View {
        VStack {
            HeaderView("Value", subtitle: "Introduction", desc: "The first parameter for the animation modifier is the Animation itself. The second parameter is 'value'. It's optional. When you change this value, the animation takes effect. If it doesn't change since the last animation, then there will be no animation. It HAS to change for the animation to happen.", back: .blue, textColor: .white)
            
            Button("Change") {
                change.toggle()
                // Apply animation when change value is true
            }
            
            Circle()
                .fill(Color.blue)
                .frame(width: 80)
                .offset(x: change ? 140 : -140, y: 0)
                .animation(.easeIn(duration: 2), value: change)
        }
        .font(.title)
    }
}

struct Value_Introduction_Previews: PreviewProvider {
    static var previews: some View {
        Value_Introduction()
    }
}
