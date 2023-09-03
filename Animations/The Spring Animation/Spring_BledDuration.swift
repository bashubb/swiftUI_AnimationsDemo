//
//  Spring_BledDuration.swift
//  Animations
//
//  Created by HubertMac on 03/09/2023.
//

import SwiftUI

struct Spring_BledDuration: View {
    
    @State private var change = false
    @State private var response = 2.0
    @State private var blendDuration = 1.0
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color("Dark"), Color("Darkest")]), center: .center, startRadius: 10, endRadius: 400)
                .ignoresSafeArea()
            VStack(spacing:10){
                TitleText("Spring").foregroundColor(Color("Gold"))
                SubtitleText("Blend Duration")
                BannerText("Blend duration is the number of seconds in which to calculate the differences in changes (within the response's duration).", backColor: Color("Gold"))
                
                Circle()
                    .fill(Color("Gold"))
                    .padding(3)
                    .scaleEffect(change ? 1 : 0.2)
                    .animation(.spring(response: response, blendDuration: blendDuration), value: change)
                
                VStack(spacing: 3) {
                    Text("Response").foregroundColor(Color("Gold"))
                    HStack {
                        Image(systemName: "1.circle.fill")
                        Slider(value: $response)
                        Image(systemName: "2.circle.fill")
                    }
                    .padding(.horizontal)
                    .foregroundColor(Color("Gold"))
                    
                    Text("Blend Duration").foregroundColor(Color("Gold"))
                    HStack {
                        Image(systemName: "0.circle.fill")
                        Slider(value: $blendDuration)
                        Image(systemName: "2.circle.fill")
                    }
                    .padding(.horizontal)
                    .foregroundColor(Color("Gold"))
                    
                }
                
                Button("Change") {
                    change.toggle()
                }
                .foregroundColor(.white)
            }
            .font(.title)
        }
    }
}

struct Spring_BledDuration_Previews: PreviewProvider {
    static var previews: some View {
        Spring_BledDuration()
    }
}
