//
//  Asymmetric_TwoAnimations.swift
//  Animations
//
//  Created by HubertMac on 18/09/2023.
//

import SwiftUI

struct Asymmetric_TwoAnimations: View {
    @State private var showHelp = false
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack(spacing:20){
                TitleText("Transitions")
                    .foregroundColor(.white)
                SubtitleText("Asymmetric: Two Animations")
                BannerText("Use withAnimation to provide different animations for insertion and removal", backColor: Color("BannerTextTransitions"))
                    .foregroundColor(.white)
                
                
                ZStack(alignment:.topTrailing) {
                    MapView()
                    Button {
                        withAnimation(.spring()) {
                            showHelp = true
                        }
                    } label: {
                        Image(systemName: "questionmark.circle.fill")
                            .foregroundColor(.red)
                    }
                    .padding()
                }
                .ignoresSafeArea(edges: .vertical)
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
                    .padding(.top,30)
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 20)
                    .fill(Color("BannerTextTransitions")))
                .padding(.top, 100)
                .shadow(radius: 15)
                .transition(.asymmetric(insertion: .slide, removal: .move(edge: .bottom)))
                .zIndex(1)
            }
            
        }
        .font(.title)
    }
}

struct Asymmetric_TwoAnimations_Previews: PreviewProvider {
    static var previews: some View {
        Asymmetric_TwoAnimations()
    }
}
