//
//  Scope_WithAnimation.swift
//  Animations
//
//  Created by HubertMac on 23/08/2023.
//

import SwiftUI

struct Scope_WithAnimation: View {
    
    @State private var flipHorizontally = false
    
    var body: some View {
        VStack{
            HeaderView("With Animation", subtitle: "Introduction", desc: "The withAnimation closure says, 'Anything that changes as a result of any values changing inside this closure will use this animation.'", back: .yellow, textColor: .black)
            
            Button {
                withAnimation(.easeIn) {
                    flipHorizontally.toggle()
                }
            } label: {
                Image(systemName: "flip.horizontal.fill")
                    .font(.system(size:50))
                    .padding()
            }
            
            Image("KluaneNationalPark")
                .resizable()
                .frame(width: 380)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
                .padding()
                .scaleEffect(x: flipHorizontally ? -1 : 1, y: 1) // Will change with animation


        }
    }
}

struct Scope_WithAnimation_Previews: PreviewProvider {
    static var previews: some View {
        Scope_WithAnimation()
    }
}
