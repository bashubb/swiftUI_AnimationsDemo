//
//  Animate_RotationEffect.swift
//  Animations
//
//  Created by HubertMac on 19/07/2023.
//

import SwiftUI

struct Animate_RotationEffect: View {
    
    @State var change: Bool = false
    
    var body: some View {
        VStack {
            HeaderView("Animatable Properties", subtitle: "Rotation Effect", desc: "Rotations are also animatable", back: Color.blue, textColor: Color.white)
            Button("Change") {
                change.toggle()
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(.blue)
                .frame(width: 300, height: 200)
                .overlay(Image(systemName: "arrow.right").foregroundColor(.black))
                .rotationEffect(Angle(degrees: change ? 220 : 0))
                .animation(.easeInOut, value: change)
            
            Spacer()
        }
        .font(.title)
    }
}

struct Animate_RotationEffect_Previews: PreviewProvider {
    static var previews: some View {
        Animate_RotationEffect()
    }
}
