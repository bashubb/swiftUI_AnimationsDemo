//
//  Asymmetric_CombiningEffect.swift
//  Animations
//
//  Created by HubertMac on 24/09/2023.
//

import SwiftUI

struct Asymmetric_CombiningEffect: View {
    @State private var showHelp = false
    
    
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack(spacing:24) {
                TitleText("Transitions")
                    .foregroundColor(.white)
                SubtitleText("Asymmetric: Combining Effects")
                BannerText("When using the asymmetric function you can still combine effects.", backColor: Color("BannerTextTransitions"))
                    .foregroundColor(.white)
                
                ZStack(alignment:.topTrailing) {
                    MapView()
                        .ignoresSafeArea(edges:.vertical)
                    
                    Button {
                        withAnimation(.spring()) {
                            showHelp = true
                        }
                    } label: {
                        Image(systemName: "questionmark.circle.fill")
                            .padding()
                            .foregroundColor(.red)
                        
                    }

                }
                
            }
            
            
            if showHelp {
                VStack(spacing:20) {
                    Text("Help")
                        .foregroundColor(.white)
                    Image("driving")
                    Button("Close") {
                        withAnimation(.easeIn) {
                            showHelp = false
                        }
                    }
                    .foregroundColor(.red)
                }
                .padding()
                .background(Color("BannerTextTransitions"), in: RoundedRectangle(cornerRadius: 20))
                .padding(.top, 100)
                .shadow(radius: 15)
                .transition(.asymmetric(insertion: .scale(scale: 0.1, anchor: .topTrailing).combined(with: .offset(y:200)),
                                        removal: .scale(scale: 0.2).combined(with: .opacity)))
                .zIndex(1)
            }
        }
        .font(.title)
        
    }
}

struct Asymmetric_CombiningEffect_Previews: PreviewProvider {
    static var previews: some View {
        Asymmetric_CombiningEffect()
    }
}
