//
//  DelayAnimations.swift
//  Animations
//
//  Created by HubertMac on 16/08/2023.
//

import SwiftUI

struct DelayAnimations: View {
    
    @State private var change = false
    
    var body: some View {
        VStack{
            HeaderView("Delay Animations", subtitle: "Introduction", desc: "You can delay an animation after it is triggered.", back: .red, textColor: .white)
            Text("Wait 1.5 second after this view loads before animating.")
                .padding()
            GeometryReader{ geometry in
                ZStack {
                    VStack(spacing: 20) {
                        Text("Hello!")
                        Image(systemName: "heart.fill")
                            .foregroundColor(.pink)
                    }
                    .font(.system(size:50))
                    
                    HStack(spacing:0){
                        Rectangle()
                            .offset(x: change ? -geometry.size.width / 2 : 0)
                        Rectangle()
                            .offset(x: change ? geometry.size.width / 2 : 0)
                    }
                    .foregroundColor(.red)
                    .animation(.default.delay(1.5), value: change)
                }
            }
        }
        .font(.title)
        .ignoresSafeArea(edges: .bottom)
        .onAppear {
            // Trigger animation
            change = true
        }
        
    }
}

struct DelayAnimations_Previews: PreviewProvider {
    static var previews: some View {
        DelayAnimations()
    }
}
