//
//  Trigger_Gesture_Magnification.swift
//  Animations
//
//  Created by HubertMac on 02/08/2023.
//

import SwiftUI

struct Trigger_Gesture_Magnification: View {
    
    @GestureState private var scale: CGFloat = 0.0
    @State var endScale: CGFloat =  1.0
    
    var body: some View {
        VStack{
            HeaderView("Trigger", subtitle: "Magnification Gesture", desc: "Animation can smooth out the magnification on views.", back: .green, textColor: .primary)
            Text("Zoom In")
         
            Image("sunrise")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200)
                .scaleEffect(scale + endScale)
                .gesture(MagnificationGesture()
                    .updating($scale, body: { value, scale, transaction in
                        scale = value.magnitude
                    })
                    .onEnded({ value in
                        endScale = value.magnitude + endScale
                    }))
                .animation(.default, value: endScale)
            
            Spacer()
            Spacer()
        }
        .font(.title)
    }
}

struct Trigger_Gesture_Magnification_Previews: PreviewProvider {
    static var previews: some View {
        Trigger_Gesture_Magnification()
    }
}
