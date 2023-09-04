//
//  Interpolating_InitialVelocity.swift
//  Animations
//
//  Created by HubertMac on 04/09/2023.
//

import SwiftUI

struct Interpolating_InitialVelocity: View {
    
    @State private var compare = false
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color("Dark"), Color("Darkest")]), center: .center, startRadius: 10, endRadius: 400)
                .ignoresSafeArea()
            VStack(spacing: 10){
                TitleText("Interpolating Spring")
                    .foregroundColor(Color("Gold"))
                SubtitleText("Initial Velocity")
                BannerText("Initial velocity is how fast the start of the animation is", backColor: Color("Gold"))
                
                Button("Compare Inital Velocity") {
                    compare.toggle()
                }
                
                HStack(alignment: .bottom, spacing:30) {
                    VStack {
                        Text("0")
                        Spacer()
                        Rectangle()
                            .fill(Color("Gold"))
                            .frame(width: 30, height: compare ? 400 : 30)
                            .animation(.interpolatingSpring(mass: 1, stiffness: 50, damping: 7, initialVelocity: 0), value: compare)
                                  
                    }
                    
                    VStack {
                        Text("5")
                        Spacer()
                        Rectangle()
                            .fill(Color("Gold"))
                            .frame(width: 30, height: compare ? 400 : 30)
                            .animation(.interpolatingSpring(mass: 1, stiffness: 50, damping: 7, initialVelocity: 5), value: compare)
                                  
                    }
                    
                    VStack {
                        Text("10")
                        Spacer()
                        Rectangle()
                            .fill(Color("Gold"))
                            .frame(width: 30, height: compare ? 400 : 30)
                            .animation(.interpolatingSpring(mass: 1, stiffness: 50, damping: 7, initialVelocity: 10), value: compare)
                                  
                    }
                    
                    VStack {
                        Text("50")
                        Spacer()
                        Rectangle()
                            .fill(Color("Gold"))
                            .frame(width: 30, height: compare ? 400 : 30)
                            .animation(.interpolatingSpring(mass: 1, stiffness: 50, damping: 7, initialVelocity: 50), value: compare)
                                  
                    }
                    
                    VStack {
                        Text("100")
                        Spacer()
                        Rectangle()
                            .fill(Color("Gold"))
                            .frame(width: 30, height: compare ? 400 : 30)
                            .animation(.interpolatingSpring(mass: 1, stiffness: 50, damping: 7, initialVelocity: 100), value: compare)
                                  
                    }
                    
                }
                .foregroundColor(.white)
            }
            .font(.title)
        }
    }
}

struct Interpolating_InitialVelocity_Previews: PreviewProvider {
    static var previews: some View {
        Interpolating_InitialVelocity()
    }
}
