//
//  Challenge7.swift
//  Animations
//
//  Created by HubertMac on 27/08/2023.
//

import SwiftUI

struct Challenge7: View {
    
    @State var showWelcome = false
    @State var isShowing = false
    @State var isSliding = false
    
    var body: some View {
        ZStack {
            // Background
            Color.black
                .ignoresSafeArea()
            
            //Header
            VStack(spacing: 20) {
        
                Text("CHALLENGE")
                    .foregroundColor(Color("Gold"))
                    .font(.largeTitle)
                Text("Recreate this Animation")
                    .foregroundColor(.gray)
                    .font(.title)
                
                Spacer()
                Text("Welcome !")
                    .font(.system(size: 55, weight: .semibold, design: .rounded))
                    .foregroundColor(Color("Gold"))
                    .opacity(showWelcome ? 1 : 0)
                
                Spacer()
                GeometryReader { geo in
                    Image(systemName: "arrow.right.circle.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 80))
                        .overlay(Circle()
                            .stroke(Color("Gold"),lineWidth:9)
                            .opacity(isShowing ? 1 :0)
                            .scaleEffect(isShowing ? 1.3 : 0.9))
                        .rotationEffect(Angle(degrees: isSliding ? 360 : 0))
                        .offset(x: isSliding ? geo.size.width - 130 : -geo.size.width / 2, y:0)
                }
                .frame(height: 100)
                
                
            }
            .onAppear{
                withAnimation(.easeInOut(duration: 1)) {
                    showWelcome = true
                }
                
                withAnimation(.easeInOut(duration: 1.5).delay(0.5)) {
                    isSliding = true
                }
                
                withAnimation (.easeIn(duration:0.8).repeatForever().delay(1.2)) {
                    isShowing = true
                }
            }
            
            
        }
    }
}
struct Challenge7_Previews: PreviewProvider {
    static var previews: some View {
        Challenge7()
    }
}
