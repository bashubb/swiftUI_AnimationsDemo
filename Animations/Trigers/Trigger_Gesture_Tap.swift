//
//  Trigger_Gesture_Tap.swift
//  Animations
//
//  Created by HubertMac on 02/08/2023.
//

import SwiftUI

struct Trigger_Gesture_Tap: View {
    
    @State private var isOn = false
    
    var body: some View {
        VStack{
            HeaderView("Trigger", subtitle: "Tap Gesture", desc: "Like a butto, you can respond to tap gestures and animate changes on the UI", back: .green, textColor: .primary)
            VStack {
                Text("Double - Tap - Gesture")
                Spacer()
                Circle()
                    .fill(isOn ? Color.green : Color.red)
                    .frame(height: 200)
                    .overlay(Text("OFF").foregroundColor(.white).opacity(isOn ? 0 : 1))
                    .overlay(Text("ON").opacity(isOn ? 1 : 0))
                    .onTapGesture(count: 2) {
                        isOn.toggle()
                    }
                    .shadow(color: isOn ? .green : .red, radius: 50)
                    .animation(.default, value: isOn)
                
                Spacer()
                    
                
                
            }
        }
        .font(.title)
    }
}

struct Trigger_Gesture_Tap_Previews: PreviewProvider {
    static var previews: some View {
        Trigger_Gesture_Tap()
    }
}
