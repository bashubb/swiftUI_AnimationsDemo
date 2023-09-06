//
//  Spring Options Delay.swift
//  Animations
//
//  Created by HubertMac on 06/09/2023.
//

import SwiftUI

struct Spring_Options_Delay: View {
    
    @State private var show = false
    @State private var largeScale: CGFloat = 5
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color("Dark"), Color("Darkest")]), center: .center, startRadius: 10, endRadius: 400)
                .ignoresSafeArea()
            
            VStack(spacing: 20){
                TitleText("Spring Options")
                    .foregroundStyle(Color("Gold"))
                SubtitleText("Delay")
                BannerText("Use the delay to sequence spring animations.", backColor: Color("Gold"))
                
                Button("Start") {
                    show.toggle()
                }
                .foregroundStyle(Color.white)
                
                Spacer()
                
                HStack {
                    Image(systemName: "1.circle")
                        .scaleEffect(show ? 1 : largeScale)
                        .opacity(show ? 1 : 0)
                        .animation(.spring(response: 0.4, dampingFraction: 0.5), value: show)
                        //.animation(.interpolatingSpring(stiffness: 50, damping: 4), value: show)
                    
                    
                    Image(systemName: "2.circle")
                        .scaleEffect(show ? 1 : largeScale)
                        .opacity(show ? 1 : 0)
                        .animation(.spring(response: 0.4, dampingFraction: 0.5).delay(0.3), value: show)
                        //.animation(.interpolatingSpring(stiffness: 50, damping: 4).delay(0.3), value: show)
                    
                    Image(systemName: "3.circle")
                        .scaleEffect(show ? 1 : largeScale)
                        .opacity(show ? 1 : 0)
                        .animation(.spring(response: 0.4, dampingFraction: 0.5).delay(0.6), value: show)
                        //.animation(.interpolatingSpring(stiffness: 50, damping: 4).delay(0.6), value: show)
                    
                }
                .font(.system(size: 100))
                .foregroundStyle(Color("Gold"))
                
                Spacer()
            }
            .font(.title)
        }
    }
}

struct Spring_Options_Delay_Previews: PreviewProvider {
    static var previews: some View {
        Spring_Options_Delay()
    }
}
