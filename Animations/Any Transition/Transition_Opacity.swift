//
//  Transition_Opacity.swift
//  Animations
//
//  Created by HubertMac on 10/09/2023.
//

import SwiftUI

struct Transition_Opacity: View {
    
    @State private var change = false
    
    var body: some View {
        ZStack{
            Color("Darkest")
                .ignoresSafeArea()
        
            VStack{
                TitleText("Transitions")
                    .foregroundColor(.white)
                SubtitleText("Opacity")
                BannerText("Use opacity to fade a view in and out.", backColor: Color("BannerTextTransitions"))
                    .foregroundColor(.white)
                
                Button("Change") {
                    change.toggle()
                }
                .foregroundColor(.red)
                
                Spacer()
                
                
                Group{
                    if change {
                        Image("driving")
                            .transition(.opacity)
                    }
                }
                .animation(.easeInOut(duration: 1), value: change)
                
                
                Spacer()
                
            }
            .font(.title)
        }
    }
}

struct Transition_Opacity_Previews: PreviewProvider {
    static var previews: some View {
        Transition_Opacity()
    }
}
