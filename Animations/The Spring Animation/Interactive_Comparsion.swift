//
//  Interactive_Comparsion.swift
//  Animations
//
//  Created by HubertMac on 03/09/2023.
//

import SwiftUI

struct Interactive_Comparsion: View {
    
    @State private var change = false
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color("Dark"), Color("Darkest")]), center: .center, startRadius: 10, endRadius: 400)
                .ignoresSafeArea()
            
            VStack(spacing: 10) {
                TitleText("Interactive Spring")
                    .foregroundColor(Color("Gold"))
                SubtitleText("Comparison")
                BannerText("Here is a comparison between the spring and interactiveSpring animations", backColor: Color("Gold"))
                
                Button("Change") {
                    change.toggle()
                }
                
                HStack{
                    VStack {
                        Text("spring").foregroundColor(.white)
                        Rectangle()
                            .fill(Color("Gold"))
                            .frame(width: 100, height: change ? 400 : 100)
                            .animation(.spring(), value: change)
                    }
                    .padding(.horizontal)
                    
                    VStack {
                        Text("interactiveSpring").foregroundColor(.white)
                        Rectangle()
                            .fill(Color("Gold"))
                            .frame(width: 100, height: change ? 400 : 100)
                            .animation(.interactiveSpring(), value: change)
                    }
                    .padding(.horizontal)
                }
                Spacer()
            }
            .font(.title)
        }
    }
}

struct Interactive_Comparsion_Previews: PreviewProvider {
    static var previews: some View {
        Interactive_Comparsion()
    }
}
