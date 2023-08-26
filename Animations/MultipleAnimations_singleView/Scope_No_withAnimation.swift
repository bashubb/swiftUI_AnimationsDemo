//
//  Scope_No_withAnimation.swift
//  Animations
//
//  Created by HubertMac on 23/08/2023.
//

import SwiftUI

struct Scope_No_withAnimation: View {
    
    @State private var isShowing = false
    
    var body: some View {
        VStack(spacing:20) {
            HeaderView("With Animation", subtitle: "Sequencing with Parent/Child", desc: "Sometiomes, withAnimation is the onlt solution when you want to animate a child view independently of a parent view.", back: .yellow, textColor: .black)
                .layoutPriority(1)
            
            Text("What you want is for the view top slide up THEN the child views to apear. Look what happens when you try to accomplish without with Animation.")
                .foregroundColor(.primary)
                
            
            GeometryReader { gp in
                VStack(spacing: 15) {
                    HStack {
                        Image(systemName: "info.circle")
                            .padding(.trailing)
                        Text("Login Help")
                        Spacer()
                    }
                    
                    VStack(spacing: 10) {
                        Image(systemName: "slider.horizontal.3")
                            .font(.largeTitle)
                        Text("Appear affter parent is done animation out.")
                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 20).opacity(0.2))
                    .opacity(isShowing ? 1 : 0)
                    .animation(.default.delay(0.4), value: isShowing)
                    
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 20)
                    .fill(Color.yellow))
                .offset(x: isShowing ? 0 : gp.size.width - 70 , y: isShowing ? 0 : gp.size.height - 20 )
                .onTapGesture {
                    isShowing.toggle()
                }
                .animation(.default, value: isShowing)
                
                
            }
            .foregroundColor(.black)
            
            
            
        }
        .font(.title2)
    }
}

struct Scope_No_withAnimation_Previews: PreviewProvider {
    static var previews: some View {
        Scope_No_withAnimation()
    }
}
