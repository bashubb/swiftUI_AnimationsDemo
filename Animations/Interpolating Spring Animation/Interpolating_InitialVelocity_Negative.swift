//
//  Interpolatin_InitialVelocity_Negative.swift
//  Animations
//
//  Created by HubertMac on 05/09/2023.
//

import SwiftUI

struct Interpolating_InitialVelocity_Negative: View {
    
    @State private var makeItBigger = false
    
    var body: some View {
        ZStack{
            RadialGradient(gradient: Gradient(colors: [Color("Dark"), Color("Darkest")]), center: .center, startRadius: 10, endRadius: 400)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
               TitleText("Interpolating Spring")
                    .foregroundColor(Color("Gold"))
                SubtitleText("Negative Initial Velocity")
                BannerText("Providing a negatice value for initial velocity can create a cool effect where the view 'backs up' before taking off.", backColor: Color("Gold"))
                
                HStack {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color("Gold"))
                        .shadow(radius: 20)
                        .frame(height: 250)
                        .padding()
                        .overlay(
                            VStack{
                                Text("Make it bigger !")
                                    .padding()
                                Image(systemName: "person.fill")
                                    .foregroundColor(.purple)
                            })
                        .scaleEffect(makeItBigger ? 1.75 : 1, anchor: .leading)
                        .zIndex(1)
                        .animation(.interpolatingSpring( stiffness: 100, damping: 10, initialVelocity: -10), value: makeItBigger)
                        .onTapGesture {
                            makeItBigger.toggle()
                        }
                        
                    
                    Text("Notice the rectangle gets smaller first before it gets bigger")
                        
                }
                .foregroundColor(.white)
            }
            .font(.title)
        }
    }
}

struct Interpolatin_InitialVelocity_Negative_Previews: PreviewProvider {
    static var previews: some View {
        Interpolating_InitialVelocity_Negative()
    }
}
