//
//  Trigger_Gesture_LongPress.swift
//  Animations
//
//  Created by HubertMac on 02/08/2023.
//

import SwiftUI

struct Trigger_Gesture_LongPress: View {
    
    @State private var isLongPressed = false
    
    var body: some View {
        VStack{
            HeaderView("Trigger", subtitle: "Long Press Gesture", desc: "You  can start an animation with a long pressure gesture", back: .green, textColor: .primary)
            
            Spacer()
            Circle()
                .fill(isLongPressed ? Color.blue : Color.green)
                .frame(height: 200)
                .overlay(Text("Long Press"))
                .overlay(Circle().stroke(lineWidth: 5)
                    .scaleEffect(isLongPressed ? 2 : 1)
                    .opacity(isLongPressed ? 0 : 1))
                .onLongPressGesture {
                    isLongPressed.toggle()
                }
                .animation(.default, value: isLongPressed)
            Spacer()
        }
        .font(.title)
    }
}

struct Trigger_Gesture_LongPress_Previews: PreviewProvider {
    static var previews: some View {
        Trigger_Gesture_LongPress()
    }
}
