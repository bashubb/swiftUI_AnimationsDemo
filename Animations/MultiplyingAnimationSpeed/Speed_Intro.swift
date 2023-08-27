//
//  Speed_Intro.swift
//  Animations
//
//  Created by HubertMac on 27/08/2023.
//

import SwiftUI

struct Speed_Intro: View {
    
    @State var change = false
    let duration = 1.0
    
    var body: some View {
        VStack(spacing:15) {
            HeaderView("Speed", subtitle: "Introduction", desc: "Animation habe a speed modifier that allows yoiu to slow down or speed up animations.", back: .orange, textColor: .primary)
            
            Button("Change") {
                change.toggle()
            }
            
            Text("Normal")
            Circle()
                .fill(Color.orange)
                .frame(width: 80)
                .offset(x: change ? 140 : -140, y: 0)
                .animation(.easeInOut(duration: duration), value: change)
            
            Text("2X Faster")
            Circle()
                .fill(Color.orange)
                .frame(width: 80)
                .offset(x: change ? 140 : -140, y: 0)
                .animation(.easeInOut(duration: duration).speed(2), value: change)
            
            Text("Half Slower")
            Circle()
                .fill(Color.orange)
                .frame(width: 80)
                .offset(x: change ? 140 : -140, y: 0)
                .animation(.easeInOut(duration: duration).speed(0.5), value: change)
            
        }
        .font(.title)
    }
}

struct Speed_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Speed_Intro()
    }
}
