//
//  ShiftingViews_Spacer_Solution.swift
//  Animations
//
//  Created by HubertMac on 17/09/2023.
//

import SwiftUI

struct ShiftingViews_Spacer_Solution: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack{
                TitleText("Transitions")
                    .foregroundColor(.white)
                SubtitleText("Using Spacer Solution")
                BannerText("Transitions work with views that are inserted and removed from the screen (view hierarchy). Insertion and removal will adjust views around them.", backColor: Color("BannerTextTransitions"))
                    .foregroundColor(.white)
                
                Button("Change"){
                    change.toggle()
                }
                .foregroundColor(.red)
                
                Spacer(minLength: 0)
                if change {
                    Image("driving")
                        .transition(.slide)
                }
                Spacer(minLength: 0)
                
                BannerText("Solution: Using spacers and filling the space.", backColor: Color("BannerTextTransitions"))
                    .foregroundColor(.white)
                
                
            }
            .font(.title)
            .animation(.default, value: change)
        }
    }
}

struct ShiftingViews_Spacer_Solution_Previews: PreviewProvider {
    static var previews: some View {
        ShiftingViews_Spacer_Solution()
    }
}
