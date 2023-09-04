//
//  Interpolating_Mass.swift
//  Animations
//
//  Created by HubertMac on 04/09/2023.
//

import SwiftUI

struct Interpolating_Mass: View {
    
    @State private var change = false
    
    var body: some View {
        ZStack{
            RadialGradient(gradient: Gradient(colors: [Color("Dark"), Color("Darkest")]), center: .center, startRadius: 10, endRadius: 400)
                .ignoresSafeArea()
            
            VStack(spacing: 15) {
                TitleText("Interpolating Spring")
                    .foregroundColor(Color("Gold"))
                SubtitleText("Mass")
                BannerText("Mass adds 'weight' to the view attached to the spring.", backColor: Color("Gold"))
                
                Button("Compare Mass") {
                    change.toggle()
                }
                
                HStack (alignment: .bottom, spacing:30){
                    VStack{
                        Text("0.01")
                        Spacer()
                        Rectangle()
                            .fill(Color("Gold"))
                            .frame(width: 40, height: change ? 400 : 30)
                            .animation(.interpolatingSpring(mass: 0.01, stiffness: 50, damping: 7), value: change)
                    }
                    
                    VStack{
                        Text("0.5")
                        Spacer()
                        Rectangle()
                            .fill(Color("Gold"))
                            .frame(width: 40, height: change ? 400 : 30)
                            .animation(.interpolatingSpring(mass: 0.5, stiffness: 50, damping: 7), value: change)
                    }
                    
                    VStack{
                        Text("1")
                        Spacer()
                        Rectangle()
                            .fill(Color("Gold"))
                            .frame(width: 40, height: change ? 400 : 30)
                            .animation(.interpolatingSpring(mass: 1, stiffness: 50, damping: 7), value: change)
                    }
                    
                    VStack{
                        Text("10")
                        Spacer()
                        Rectangle()
                            .fill(Color("Gold"))
                            .frame(width: 40, height: change ? 400 : 30)
                            .animation(.interpolatingSpring(mass: 10, stiffness: 50, damping: 7), value: change)
                    }
                    
                    VStack{
                        Text("100")
                        Spacer()
                        Rectangle()
                            .fill(Color("Gold"))
                            .frame(width: 40, height: change ? 400 : 30)
                            .animation(.interpolatingSpring(mass: 100, stiffness: 50, damping: 7), value: change)
                    }
                }
                .foregroundColor(.white)
                
            }
            .font(.title)
            
            
        }
    }
}

struct Interpolating_Mass_Previews: PreviewProvider {
    static var previews: some View {
        Interpolating_Mass()
    }
}
