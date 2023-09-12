//
//  Combinig_Intro.swift
//  Animations
//
//  Created by HubertMac on 12/09/2023.
//

import SwiftUI

struct Combinig_Intro: View {
    
    @State private var change = false
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack(spacing:20) {
                TitleText("Transitions")
                    .foregroundColor(.white)
                SubtitleText("Combining Introduction")
                BannerText("You can comnbine transition effects to work together. For example, here is the combination of slide and opacity.", backColor: Color("BannerTextTransitions"))
                    .foregroundColor(.white)
                
                Button("Change") {
                    change.toggle()
                }
                .foregroundColor(.red)
                
                Spacer()
                
                if change {
                    Image("window")
                        .transition(.slide.combined(with: .opacity))
                }
                
                Spacer()
            }
            .animation(.default, value: change)
            .font(.title)
        }
    }
}

struct Combinig_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Combinig_Intro()
    }
}
