//
//  Spring_Intro.swift
//  Animations
//
//  Created by HubertMac on 02/09/2023.
//

import SwiftUI

struct Spring_Intro: View {
    
   @State var show = false
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors:[Color("Dark"), Color("Darkest")]), center: .center, startRadius: 10, endRadius: 400)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                TitleText("Spring").foregroundColor(Color("Gold"))
                SubtitleText("Introduction")
                BannerText("The spring animation adds a bounce to your animations.", backColor: Color("Gold"))
                
                RoundedRectangle(cornerRadius: 40)
                    .fill(Color("Gold"))
                    .padding()
                    .overlay(Image(systemName: "phone")
                        .font(.system(size: 150)))
                    .scaleEffect(show ? 1 : 0.01, anchor: .bottom )
                    .opacity(show ? 1 : 0)
                    .animation(.spring(), value: show) // Simplest spring animation
                
                Button {
                    show.toggle()
                } label: {
                    Image(systemName: show ? "person.2.fill" : "person.2")
                        .foregroundColor(Color("Gold"))
                        .font(.largeTitle)
                }

            }
            .font(.title)
            
        }
    }
}

struct Spring_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Spring_Intro()
    }
}
