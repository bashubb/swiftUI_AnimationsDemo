//
//  Trigger_Slider.swift
//  Animations
//
//  Created by HubertMac on 20/07/2023.
//

import SwiftUI

struct Trigger_Slider: View {

    
    @State var blueWidth: CGFloat = 50
    
    var body: some View {
        VStack {
            HeaderView("Triggers", subtitle: "Slider", desc: "When adjisting a slider, there may be some UI element you are changing that can be animated.", back: Color.green, textColor: Color.primary)
            
            
            HStack {
                Color.blue
                    .frame(width: blueWidth)
                Color.green
            }
            .animation(.default, value: blueWidth)
            
            Slider(value: $blueWidth, in: 0...410, step: 1)
                .padding()
            
        }
        .font(.title)
    }
}

struct Trigger_Slider_Previews: PreviewProvider {
    static var previews: some View {
        Trigger_Slider()
    }
}
