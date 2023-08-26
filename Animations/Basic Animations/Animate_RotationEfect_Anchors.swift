//
//  Animate_RotationEfect_Anchors.swift
//  Animations
//
//  Created by HubertMac on 19/07/2023.
//

import SwiftUI

struct Animate_RotationEfect_Anchors: View {
    
    @State var change: Bool = false
    
    var body: some View {
        VStack {
            HeaderView("Animatable Properties", subtitle: "Rotation Around Anchors", desc: "You can rotate around an anchor of your choosing. The default is rotating around the center anchor.", back: Color.blue, textColor: Color.white)
            
            Button("Change") {
                change.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
                .frame(width: 300, height: 180)
                .overlay(Text("Rotate from top left").font(.title).foregroundColor(.white))
                .rotationEffect(Angle(degrees: change ? 220 : 0), anchor: .topLeading)
                .animation(.default, value: change)
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
                .frame(width: 300, height: 180)
                .overlay(Text("Rotate from bottom right").font(.title).foregroundColor(.white))
                .rotationEffect(Angle(degrees: change ? 220 : 0), anchor: .bottomTrailing)
                .animation(.default, value: change)
            
        }
        .font(.title)
    }
}

struct Animate_RotationEfect_Anchors_Previews: PreviewProvider {
    static var previews: some View {
        Animate_RotationEfect_Anchors()
    }
}
