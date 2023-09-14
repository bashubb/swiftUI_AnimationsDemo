//
//  Combining_MoveAndScale.swift
//  Animations
//
//  Created by HubertMac on 14/09/2023.
//

import SwiftUI

struct Combining_MoveAndScale: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack(spacing:20) {
                TitleText("Transitions")
                    .foregroundColor(.white)
                
                SubtitleText("Combining Move & Scale")
                
                BannerText("Here is an example of combining move and scale.", backColor: Color("BannerTextTransitions"))
                    .foregroundColor(.white)
                
                Spacer()
                
                
                HStack(alignment:.bottom) {
                    Button {
                        change.toggle()
                    } label: {
                        Image(systemName: "macwindow")
                    }

                    if change {
                        Image("window")
                            .transition(.move(edge: .leading)
                                .combined(with:.scale(scale: 0.1, anchor: .bottomLeading)))
                    }
                    
                    Spacer()
                }
                .animation(.default, value: change)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
            }
            .font(.title)
        }
    }
}

struct Combining_MoveAndScale_Previews: PreviewProvider {
    static var previews: some View {
        Combining_MoveAndScale()
    }
}
