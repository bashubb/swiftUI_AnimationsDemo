//
//  Interpolating_Overlapping.swift
//  Animations
//
//  Created by HubertMac on 05/09/2023.
//

import SwiftUI

struct Interpolating_Overlapping: View {
    
    @State private var taps = 0
    @State private var degrees = 0.0
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color("Dark"), Color("Darkest")]), center: .center, startRadius: 10, endRadius: 400)
                .ignoresSafeArea()
            VStack(spacing:15) {
                TitleText("Interpolating Spring")
                    .foregroundColor(Color("Gold"))
                SubtitleText("Overlapping the Animation")
                BannerText("Triggering an interpolatinSpring multiple times can increase the strength of animation eachtime", backColor: Color("Gold"))
                
                Circle()
                    .fill(Color("Gold"))
                    .overlay(Image(systemName: "arrow.up").offset(y: -120))
                    .rotationEffect(Angle(degrees: degrees))
                    .animation(.interpolatingSpring(stiffness: 1, damping: 0.8), value: degrees)
                    .padding()
                    .onTapGesture {
                        degrees += 25
                        taps += 1
                    }
                
                Text("Taps: \(taps)")
                    .foregroundColor(Color("Gold"))
            }
            .font(.title)
        }
    }
}

struct Interpolating_Overlapping_Previews: PreviewProvider {
    static var previews: some View {
        Interpolating_Overlapping()
    }
}
