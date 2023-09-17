//
//  ShifitingViews_Problem .swift
//  Animations
//
//  Created by HubertMac on 17/09/2023.
//

import SwiftUI

struct ShifitingViews_Problem_: View {
    @State private var change = false
    
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack {
                TitleText("Transitions")
                    .foregroundColor(.white)
                SubtitleText("Shifting Views Problem")
                BannerText("Transitions work with views that are inserted and removed from the screen (view hierarchy). Insertion and removal will adjust views around them.", backColor: Color("BannerTextTransitions"))
                    .foregroundColor(.white)
                
                Button("Change"){
                    change.toggle()
                }
                .foregroundColor(.red)
                .padding()
                
                if change {
                    Image("driving")
                        .transition(.slide)
                }
                
                BannerText("Notice what happens when the view is insered here", backColor: Color("BannerTextTransitions"))
                    .foregroundColor(.white)
            }
            .animation(.default, value: change)
            .font(.title)
        }
    }
}

struct ShifitingViews_Problem__Previews: PreviewProvider {
    static var previews: some View {
        ShifitingViews_Problem_()
    }
}
