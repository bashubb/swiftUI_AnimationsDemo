//
//  ZStack_Problem.swift
//  Animations
//
//  Created by HubertMac on 14/09/2023.
//

import SwiftUI

struct ZStack_Problem: View {
    @State private var show = false
    
    var body: some View {
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            VStack(spacing: 20){
                TitleText("Transitions")
                    .foregroundColor(.white)
                SubtitleText("ZStack Problem")
                BannerText("When a view in a ZStack has a transition, sometimes it looks as though the removal effect is not working.This is beacuse the view is getting moved UNDER the other layers and cannot be seen", backColor: Color("BannerTextTransitions"))
                    .foregroundColor(.white)
                
                Button("Show") {
                    show.toggle()
                }
                .foregroundColor(.red)
            }
            
            .blur(radius: show ? 10 : 0)
            
        
                if show {
                    VStack{
                        Image(systemName: "person")
                            .font(.system(size: 120))
                        Button("Close") {
                            show = false
                        }
                        .padding(.top, 30)
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10)
                        .fill(Color("BannerTextTransitions"))
                        .shadow(radius: 20))
                    .transition(.slide)
                    .zIndex(1)
                    
            }
            
        }
        .animation(.default, value: show)
        .font(.title)
    }
}

struct ZStack_Problem_Previews: PreviewProvider {
    static var previews: some View {
        ZStack_Problem()
    }
}
