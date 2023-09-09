//
//  Transition_Intro.swift
//  Animations
//
//  Created by HubertMac on 09/09/2023.
//

import SwiftUI

struct Transition_Intro: View {
    
   @State private var change = false
    
    var body: some View {
        ZStack{
            Color("Darkest")
                .ignoresSafeArea()
            VStack(spacing:20) {
                TitleText("Transitions")
                    .foregroundColor(.white)
                SubtitleText("Introduction")
                BannerText("Use the transition modifier to specify how a view enters and exits the screen", backColor: Color(red: 0.171, green: 0.174, blue: 0.244))
                    .foregroundColor(.white)
                
                Button("Change") {
                    change.toggle()
                }
                .foregroundColor(.red)
                
                Spacer()
                
                Group{
                    if change {
                        Image("driving")
                            .transition(AnyTransition.slide)
                    }
                    
                }
                .animation(.default, value: change)
                
                Spacer()
            }
            .font(.title)
            
        }
    }
}

struct Transition_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Transition_Intro()
    }
}
