//
//  Interpolating_Stiffness.swift
//  Animations
//
//  Created by HubertMac on 03/09/2023.
//

import SwiftUI

struct Interpolating_Stiffness: View {
    
    @State private var compare = false
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color("Dark"), Color("Darkest")]), center: .center, startRadius: 10, endRadius: 400)
                .ignoresSafeArea()
            VStack(spacing: 10) {
                TitleText("Interpolating Spring")
                    .foregroundColor(Color("Gold"))
                SubtitleText("Stiffness")
                    .font(.title)
                BannerText("Siffness means how unmoving something is. Zero is completely stiff. Gigher values alre less and less siff, moving faster", backColor:Color("Gold"))
                    .font(.title)
                
                Button("Compare Stiffness") {
                    compare.toggle()
                }
                .font(.title)
                
                HStack(alignment:.bottom, spacing: 30) {
                    VStack {
                        Text("0.7")
                        Spacer()
                        Rectangle()
                            .fill(Color("Gold"))
                            .frame(width: 25, height: compare ? 400 : 25)
                            .animation(.interpolatingSpring(stiffness: 0.7, damping: 1), value: compare)
                    }
                    
                    VStack {
                        Text("1")
                        Spacer()
                        Rectangle()
                            .fill(Color("Gold"))
                            .frame(width: 25, height: compare ? 400 : 25)
                            .animation(.interpolatingSpring(stiffness: 0.7, damping: 1), value: compare)
                    }
                    
                    VStack {
                        Text("10")
                        Spacer()
                        Rectangle()
                            .fill(Color("Gold"))
                            .frame(width: 25, height: compare ? 400 : 25)
                            .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: compare)
                    }
                    
                    VStack {
                        Text("50")
                        Spacer()
                        Rectangle()
                            .fill(Color("Gold"))
                            .frame(width: 25, height: compare ? 400 : 25)
                            .animation(.interpolatingSpring(stiffness: 50, damping: 1), value: compare)
                    }
                    
                    VStack {
                        Text("100")
                        Spacer()
                        Rectangle()
                            .fill(Color("Gold"))
                            .frame(width: 25, height: compare ? 400 : 25)
                            .animation(.interpolatingSpring(stiffness: 100, damping: 1), value: compare)
                    }
                    
                    VStack {
                        Text("200")
                        Spacer()
                        Rectangle()
                            .fill(Color("Gold"))
                            .frame(width: 25, height: compare ? 400 : 25)
                            .animation(.interpolatingSpring(stiffness: 200, damping: 1), value: compare)
                    }
                }
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.horizontal, 5)
                
            }
            
        }
    }
}

struct Interpolating_Stiffness_Previews: PreviewProvider {
    static var previews: some View {
        Interpolating_Stiffness()
    }
}
