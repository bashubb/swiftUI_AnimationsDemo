//
//  Animate_ScaleEffect_Anchors.swift
//  Animations
//
//  Created by HubertMac on 19/07/2023.
//

import SwiftUI

struct Animate_ScaleEffect_Anchors: View {
    
    @State var change: Bool = false
    
    var body: some View {
        VStack(spacing: 15){
            HeaderView("Animatable Properties", subtitle: "Scale From Anchors", desc: "You can scale around an anchor of your choosing. The default is scaling from the center anchor", back: Color.blue, textColor: Color.white)
            
            Button("change") {
                change.toggle()
            }
            
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.blue)
                .overlay(Text("Scale from top").foregroundColor(.white))
                .scaleEffect(change ? 1 : 0.5, anchor: .top)
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.blue)
                .overlay(Text("Scale from right").foregroundColor(.white))
                .scaleEffect(change ? 0.5 : 1, anchor: .trailing)
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.blue)
                .overlay(Text("Scale from  bottom left").foregroundColor(.white))
                .scaleEffect(change ? 1 : 0.5, anchor: .bottomLeading)
            
            
        }
        .animation(.default, value: change)
        .font(.title)
    }
}

struct Animate_ScaleEffect_Anchors_Previews: PreviewProvider {
    static var previews: some View {
        Animate_ScaleEffect_Anchors()
    }
}
