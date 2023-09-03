//
//  Spring_Response.swift
//  Animations
//
//  Created by HubertMac on 03/09/2023.
//

import SwiftUI

struct Spring_Response: View {
    
    @State private var show = false
    @State private var response = 0.55 //This is the default response value
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color("Dark"), Color("Darkest")]), center: .center, startRadius: 10, endRadius: 400)
                .ignoresSafeArea()
            
            VStack(spacing: 10) {
                TitleText("Spring").foregroundColor(Color("Gold"))
                SubtitleText("Response")
                BannerText("Using the response parameter you can adjust the spring's response to being activated. Will it respond quickly or slowly ?", backColor: Color("Gold"))
                
                RoundedRectangle(cornerRadius: 40)
                    .fill(Color("Gold"))
                    .overlay(Image(systemName: "phone")
                        .font(.system(size:150)))
                    .padding()
                    .scaleEffect(show ? 1 : 0.001)
                    .opacity(show ? 1 : 0)
                    .animation(.spring(response: response), value: show)
                // Adjust response
                
                Button {
                    show.toggle()
                } label: {
                    Image(systemName: show ?  "person.2.fill" : "person.2")
                }
                .tint(Color("Gold"))
                
                HStack{
                    Image(systemName: "0.circle.fill")
                    Slider(value: $response)
                    Image(systemName: "1.circle.fill")
                }
                .foregroundColor(Color("Gold"))
                .padding()

                    
            }
            .font(.title)
        }
    }
}

struct Spring_Response_Previews: PreviewProvider {
    static var previews: some View {
        Spring_Response()
    }
}
