//
//  SwiftUIView.swift
//  Animations
//
//  Created by HubertMac on 19/07/2023.
//

import SwiftUI

struct Animate_Size_ScaleEffect: View {
    
    @State var change: Bool = false
    
    var body: some View {
        VStack{
            HeaderView("Animatable Properties", subtitle: "Scale Effect", desc: "You can animate the size of an object through the scale Effect modifier values", back: Color.blue, textColor: Color.white)
            
            Button("Change") {
                change.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
                .padding()
                .scaleEffect(change ? 0.1 : 1)
                .animation(.default, value: change)
            
            Text("Notice how scaleEffect does NOT modify the layout")
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .padding(.bottom)
            
            
        }
        .font(.title)
    }
}

struct Animate_Size_ScaleEffectPreviews: PreviewProvider {
    static var previews: some View {
        Animate_Size_ScaleEffect()
    }
}
