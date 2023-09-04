//
//  Interpolating_CompareStiffnessDamping.swift
//  Animations
//
//  Created by HubertMac on 04/09/2023.
//

import SwiftUI

struct Interpolating_CompareStiffnessDamping: View {
    
    @State private var compare = false
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color("Dark"), Color("Darkest")]), center: .center, startRadius: 10, endRadius: 400)
                .ignoresSafeArea()
            
            VStack(spacing: 15) {
                TitleText("Interpolating Spring")
                    .foregroundColor(Color("Gold"))
                SubtitleText("Stiffness & Dampiong Comparison")
                    .font(.system(size: 25))
                BannerText("Use Stiffness to help control the speed to the destination.Use damping to help control extent of bounce", backColor: Color("Gold"))
                
                
                Button("Compare Stiffness & Damping") {
                    compare.toggle()
                }
                
                HStack(alignment: .bottom, spacing: 40) {
                    
                    VStack{
                        Text("End State")
                        Spacer()
                        Rectangle()
                            .fill(Color("Gold"))
                            .frame(width: 50, height:  400)
                    }
                    
                    VStack{
                        Text("50, 7")
                        Spacer()
                        Rectangle()
                            .fill(Color("Gold"))
                            .frame(width: 50, height: compare ? 400 : 30 )
                            .animation(.interpolatingSpring(stiffness: 50, damping: 7), value: compare)
                    }
                    
                    VStack{
                        Text("1, 1")
                        Spacer()
                        Rectangle()
                            .fill(Color("Gold"))
                            .frame(width: 50, height: compare ? 400 : 30 )
                            .animation(.interpolatingSpring(stiffness: 1, damping: 1), value: compare)
                    }
                    
                }
                .foregroundColor(.white)
                .fontWeight(.bold)
                
            
            }
            .font(.title2)
            
            Rectangle()
                .stroke(Color.red, lineWidth: 2)
                .frame(height: 150)
        }
    }
}

struct Interpolating_CompareStiffnessDamping_Previews: PreviewProvider {
    static var previews: some View {
        Interpolating_CompareStiffnessDamping()
    }
}
