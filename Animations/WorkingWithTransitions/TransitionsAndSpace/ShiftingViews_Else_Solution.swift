//
//  ShiftingViews_Else_Solution.swift
//  Animations
//
//  Created by HubertMac on 17/09/2023.
//

import SwiftUI

struct ShiftingViews_Else_Solution: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack (spacing: 20) {
                TitleText("Transitions")
                    .foregroundColor(.white)
                SubtitleText("Using Else Solution")
                BannerText("Transitions work with views that are inserted and removed from the screen(view hierarchy). Insertion and removal will adjust views around them.", backColor: Color("BannerTextTransitions"))
                    .foregroundColor(.white)
                
                Button("Change") {
                    change.toggle()
                }
                .foregroundColor(.red)
                .padding()
                
                if change {
                    Image("driving")
                        .transition(.slide)
                } else {
                    Image("driving")
                        .hidden()
                }
                
                BannerText("Solution: Using a hidden view in the else.", backColor: Color("BannerTextTransitions"))
                    .foregroundColor(.white)
            }
            .font(.title)
            .animation(.default, value: change)
        }
    }
}

struct ShiftingViews_Else_Solution_Previews: PreviewProvider {
    static var previews: some View {
        ShiftingViews_Else_Solution()
    }
}
