//
//  Combining_ThreeEffects.swift
//  Animations
//
//  Created by HubertMac on 14/09/2023.
//

import SwiftUI

struct Combining_ThreeEffects: View {
    
    @State private var change = false
    
    var body: some View {
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            VStack(spacing:20){
                TitleText("Transitions")
                    .foregroundColor(.white)
                SubtitleText("Combining Three Effects")
                BannerText("You can combine more than 2 effects.Also notice that order does matter.Tis is like the previous example but the firest two effects have been switched", backColor: Color("BannerTextTransitions"))
                    .foregroundColor(.white)
                
                Spacer()
                
                HStack(alignment: .bottom) {
                    Button {
                        change.toggle()
                    } label: {
                        Image(systemName:"macwindow")
                    }
                    
                    if change {
                        Image("window")
                            .transition(.scale(scale: 0.1, anchor: .bottomLeading)
                                .combined(with: .move(edge: .leading))
                                .combined(with: .opacity))
                    }
                    
                    Spacer()
                }
                .animation(.default, value: change)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                

            }
            .font(.title)
        }
    }
}

struct Combining_ThreeEffects_Previews: PreviewProvider {
    static var previews: some View {
        Combining_ThreeEffects()
    }
}
