//
//  Transition_Move.swift
//  Animations
//
//  Created by HubertMac on 09/09/2023.
//

import SwiftUI

struct Transition_Move: View {
    
    @State private var change = false
    
    var body: some View {
        ZStack{
            
            Color("Darkest")
                .ignoresSafeArea()
            
            VStack(spacing:15){
                TitleText("Transitions")
                    .foregroundColor(.white)
                SubtitleText("Move")
                BannerText("Move the view into view from the edge specified.", backColor: Color("BannerTextTransitions"))
                    .foregroundColor(.white)
                
                Button("Change") {
                    change.toggle()
                }
                .foregroundColor(.red)
                
                Spacer()
                
                Group{
                    if change {
                        Image("driving")
                            .transition(.move(edge: .bottom))
                    }
                }
                .animation(.easeInOut(duration: 1), value: change)
                
                Spacer()
                
            }
            .font(.title)
        }
    }
}

struct Transition_Move_Previews: PreviewProvider {
    static var previews: some View {
        Transition_Move()
    }
}
