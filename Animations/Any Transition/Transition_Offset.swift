//
//  Transition_Offset.swift
//  Animations
//
//  Created by HubertMac on 10/09/2023.
//

import SwiftUI

struct Transition_Offset: View {
    
    @State private var change = false
    
    var body: some View {
        ZStack{
            Color("Darkest")
                .ignoresSafeArea()
            
            VStack(spacing: 20){
                TitleText("Transitions")
                    .foregroundColor(.white)
                SubtitleText("Offset")
                BannerText("The offset transition moves in FROM the offset you specify. ", backColor: Color("BannerTextTransitions"))
                    .foregroundColor(.white)
                
                Button("Change") {
                    change.toggle()
                }
                .foregroundColor(.red)
                
                Spacer()
                
                Group {
                    if change {
                        Image("driving")
                            .transition(.offset(x: 200, y: -200))
                    }
                    
                }
                .animation(.default, value: change)
                
                Spacer()
            }
            .font(.title)
        }
    }
}

struct Transition_Offset_Previews: PreviewProvider {
    static var previews: some View {
        Transition_Offset()
    }
}
