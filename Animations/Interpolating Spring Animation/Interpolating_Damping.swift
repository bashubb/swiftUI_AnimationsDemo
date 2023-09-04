//
//  Interpolating Spring.swift
//  Animations
//
//  Created by HubertMac on 04/09/2023.
//

import SwiftUI

struct Interpolating_Damping: View {
    
    @State private var compareDamping = false
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color("Dark"),Color("Darkest")]), center: .center, startRadius: 10, endRadius: 400)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                TitleText("Interpolating Spring")
                    .foregroundColor(Color("Gold"))
                SubtitleText("Damping")
                BannerText("Damping controls how much drag or friction is added to the spring.", backColor: Color("Gold"))
                
                Button("Compare Damping") {
                    compareDamping.toggle()
                }
                HStack(alignment: .bottom, spacing:40) {
                    
                    VStack {
                        Text("0")
                        Spacer()
                        Rectangle()
                            .fill(Color("Gold"))
                            .frame(width: 30, height: compareDamping ? 400 : 25)
                            .animation(.interpolatingSpring(stiffness: 10, damping: 0), value: compareDamping)
                        
                    }
                    
                    VStack {
                        Text("0.5")
                        Spacer()
                        Rectangle()
                            .fill(Color("Gold"))
                            .frame(width: 30, height: compareDamping ? 400 : 25)
                            .animation(.interpolatingSpring(stiffness: 10, damping: 0.5), value: compareDamping)
                        
                    }
                    
                    VStack {
                        Text("1")
                        Spacer()
                        Rectangle()
                            .fill(Color("Gold"))
                            .frame(width: 30, height: compareDamping ? 400 : 25)
                            .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: compareDamping)
                        
                    }
                    
                    VStack {
                        Text("3")
                        Spacer()
                        Rectangle()
                            .fill(Color("Gold"))
                            .frame(width: 30, height: compareDamping ? 400 : 25)
                            .animation(.interpolatingSpring(stiffness: 10, damping: 3), value: compareDamping)
                        
                    }
                    
                    VStack {
                        Text("5")
                        Spacer()
                        Rectangle()
                            .fill(Color("Gold"))
                            .frame(width: 30, height: compareDamping ? 400 : 25)
                            .animation(.interpolatingSpring(stiffness: 10, damping: 5), value: compareDamping)
                        
                    }
                    
                }
                .fontWeight(.bold)
                .foregroundColor(.white)
               
                    
                
            }
            .font(.title)
        }
    }
}

struct Interpolating_Damping_Previews: PreviewProvider {
    static var previews: some View {
        Interpolating_Damping()
    }
}
