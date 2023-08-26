//
//  Trigger_ScrollLocation.swift
//  Animations
//
//  Created by HubertMac on 15/08/2023.
//

import SwiftUI

struct Trigger_ScrollLocation: View {
    var body: some View {
        VStack {
            HeaderView("Trigger", subtitle: "ScrollView", desc: "Although no animation modifier is used, the ScrollView is changing values (locations of views) that you can use to modify views. Here is a parallax effect as an example:", back: .green, textColor: .primary)
            
            ScrollView {
                ZStack{
                    GeometryReader { gp in
                        Rectangle()
                            .fill(RadialGradient(colors: [.gray, .red, .green], center: .leading, startRadius: 0, endRadius: 300))
                            .offset(y: -gp.frame(in: .global).origin.y / 2)
                    }
                    VStack (spacing: 40){
                        Rectangle()
                            .cornerRadius(20)
                            .frame(height: 200)
                            .opacity(0.7)
                        Rectangle()
                            .cornerRadius(20)
                            .frame(height: 200)
                            .opacity(0.7)
                        Rectangle()
                            .cornerRadius(20)
                            .frame(height: 200)
                            .opacity(0.7)
                
                    }
                    .padding(40)
                }
                .ignoresSafeArea(edges: .vertical)
            }
        }
    }
}

struct Trigger_ScrollLocation_Previews: PreviewProvider {
    static var previews: some View {
        Trigger_ScrollLocation()
    }
}
