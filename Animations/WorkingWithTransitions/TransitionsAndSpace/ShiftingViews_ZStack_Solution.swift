//
//  ShiftingViews_ZStack_Solution.swift
//  Animations
//
//  Created by HubertMac on 17/09/2023.
//

import SwiftUI

struct ShiftingViews_ZStack_Solution: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(spacing:20) {
                TitleText("Transitions")
                    .foregroundColor(.white)
                SubtitleText("ZStack Solution")
                BannerText("Transitions work with views that are inserted and removed from the scree(view hierarchy). Insertion and removal will adjust views around them.", backColor: Color("BannerTextTransitions"))
                    .foregroundColor(.white)
                
                Button("Change") {
                    change.toggle()
                }
                .foregroundColor(.red)
                .padding()
                
                BannerText("Solution: Use a ZStack and move the view on top of the other views.", backColor: Color("BannerTextTransitions"))
                    .foregroundColor(.white)
                
            }
            .font(.title)
            
            if change {
                Image("driving")
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10)
                        .fill(Color("BannerTextTransitions"))
                        .shadow(radius: 20))
                    .offset(y: -65)
                    .zIndex(1)
                    .transition(.slide).animation(.default, value: change)
            }
        }
        .animation(.default, value: change)
    }
}

struct ShiftingViews_ZStack_Solution_Previews: PreviewProvider {
    static var previews: some View {
        ShiftingViews_ZStack_Solution()
    }
}
