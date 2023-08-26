//
//  Scope_WithAnimation_CustomAnimation.swift
//  Animations
//
//  Created by HubertMac on 23/08/2023.
//

import SwiftUI

struct Scope_WithAnimation_CustomAnimation: View {
    @State private var flipHorizontally = false
    
    var body: some View {
        VStack{
            HeaderView("With Animation", subtitle: "Custom Animations", desc: "Using just withAnimation gives you the default animation. You can also customize the curve, duration , etc just like the previous animations you learned about.", back: .yellow, textColor: .black)
                .layoutPriority(1)
            
            Button {
                withAnimation(.easeIn(duration: 2)) {
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

struct Scope_WithAnimation_CustomAnimation_Previews: PreviewProvider {
    static var previews: some View {
        Scope_WithAnimation_CustomAnimation()
    }
}
