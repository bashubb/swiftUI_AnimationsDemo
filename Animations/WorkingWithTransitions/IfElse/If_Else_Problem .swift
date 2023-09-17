//
//  If_Else_Problem .swift
//  Animations
//
//  Created by HubertMac on 17/09/2023.
//

import SwiftUI

struct If_Else_Problem_: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                TitleText("Transitions")
                    .foregroundColor(.white)
                SubtitleText("If Else Problem")
                BannerText("Transitions define how views are insered and removed. This means you will have viewa in an if block. But what about switching between two views using the else block? Take a look:", backColor: Color("BannerTextTransitions"))
                    .foregroundColor(.white)
                
                Button("Change"){
                    change.toggle()
                }
                .foregroundColor(.red)
                .padding(.bottom)
                
                if change {
                    Image(systemName: "person")
                        .font(.system(size: 120))
                        .foregroundColor(.white)
                        .transition(.move(edge: .leading))
                } else {
                    Image(systemName: "person.2")
                        .font(.system(size: 120))
                        .foregroundColor(.white)
                        .transition(.move(edge: .trailing))
                }
                
                // Everything looks fine but sometime another solution is needed: 
                /*
                 if change == false {
                     Image(systemName: "person.2")
                         .font(.system(size: 120))
                         .foregroundColor(.white)
                         .transition(.move(edge: .trailing))
                 */
                
                Spacer()
                
                
                
            }
            .animation(.default, value: change)
            .font(.title)
        }
    }
}

struct If_Else_Problem__Previews: PreviewProvider {
    static var previews: some View {
        If_Else_Problem_()
    }
}
