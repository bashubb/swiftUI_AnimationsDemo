//
//  Transition_Scale.swift
//  Animations
//
//  Created by HubertMac on 10/09/2023.
//

import SwiftUI

struct Transition_Scale: View {
    
    @State private var change = false
    
    var body: some View {
        ZStack{
            Color("Darkest")
                .ignoresSafeArea()
            
            VStack{
                TitleText("Transitions")
                    .foregroundColor(.white)
                SubtitleText("Scale")
                BannerText("Come into view from the scale specified.", backColor: Color("BannerTextTransitions"))
                    .foregroundColor(.white)
                
                Button("Change") {
                    change.toggle()
                }
                .foregroundColor(.red)
                
                Spacer()
                
                Group{
                    if change {
                        Image("driving")
                            .transition(.scale(scale: 3).animation(.default))
                    }
                }
                
                Spacer()
            }
            .font(.title)
        }
    }
}

struct Transition_Scale_Previews: PreviewProvider {
    static var previews: some View {
        Transition_Scale()
    }
}
