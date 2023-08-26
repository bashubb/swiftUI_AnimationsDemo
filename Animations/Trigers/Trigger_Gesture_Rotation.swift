//
//  Trigger_Gesture_Rotation.swift
//  Animations
//
//  Created by HubertMac on 15/08/2023.
//

import SwiftUI

struct Trigger_Gesture_Rotation: View {
    
    @State private var degrees = 0.0
    
    var body: some View {
        VStack(spacing: 0) {
            HeaderView("Trigger", subtitle: "Rotation Gesture", desc: "Use the rotation gesture to tchange an angle of a view and the animation will smooth out the rotation effect.", back: .green, textColor: .primary)
            
            ZStack {
                Image(systemName: "gear")
                    .font(.system(size:300))
                    .rotationEffect(Angle.degrees(degrees))
                    .gesture(RotationGesture()
                        .onChanged({ (angle) in
                            degrees = angle.degrees
                        }))
                    .animation(.default, value: degrees) // Smooth out the rotation
                Image(systemName: "gear")
                    .font(.system(size: 140))
                    .rotationEffect(-Angle.degrees(degrees))
                    .offset(x: 130, y: 190)
                    .animation(.default, value: degrees) // Smooth out the rotation
                Image(systemName: "gear")
                    .font(.system(size: 80))
                    .rotationEffect(Angle.degrees(degrees))
                    .offset(x: 60, y: 280)
                    .animation(.default, value: degrees) // Smooth out the rotation
            }
            .foregroundColor(.green)
           Spacer()
            
        }
    }
}

struct Trigger_Gesture_Rotation_Previews: PreviewProvider {
    static var previews: some View {
        Trigger_Gesture_Rotation()
    }
}
