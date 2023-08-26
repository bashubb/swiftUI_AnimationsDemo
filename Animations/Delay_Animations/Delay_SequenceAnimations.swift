//
//  Delay_SequenceAnimations.swift
//  Animations
//
//  Created by HubertMac on 16/08/2023.
//

import SwiftUI

struct Delay_SequenceAnimations: View {
    
    @State private var show = false
    
    var body: some View {
        VStack(spacing:20) {
            HeaderView("Delay", subtitle: "Sequence Animations", desc: "Use the delay to sequence animations", back: .red, textColor: .white)
            
            VStack {
                Group {
                    Image(systemName: "1.circle")
                        .opacity(show ? 1 : 0)
                        .animation(.easeIn.delay(0.5), value: show)
                    Image(systemName: "2.circle")
                        .opacity(show ? 1 : 0)
                        .animation(.easeIn.delay(0.9), value: show)
                    Image(systemName: "3.circle")
                        .opacity(show ? 1 : 0)
                        .animation(.easeIn.delay(1.3), value: show)
                }.font(.system(size:100))
                
                Button("Go") {
                    
                }
                .font(.system(size:70))
                .foregroundColor(.white)
                .padding()
                .background(Circle().fill(Color.green))
                .opacity(show ? 1 : 0 )
                .animation(.easeIn.delay(1.7), value: show)
            }
            .onAppear{show = true}
            Spacer()
            
        }
        .font(.title)
        .ignoresSafeArea(edges: .bottom)
    }
}

struct Delay_SequenceAnimations_Previews: PreviewProvider {
    static var previews: some View {
        Delay_SequenceAnimations()
    }
}
