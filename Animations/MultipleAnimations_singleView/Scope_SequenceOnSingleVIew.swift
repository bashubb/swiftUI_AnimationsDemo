//
//  Scope_SequenceOnSingleVIew.swift
//  Animations
//
//  Created by HubertMac on 22/08/2023.
//

import SwiftUI

struct Scope_SequenceOnSingleVIew: View {
    
    @State private var change = false
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Scope", subtitle: "Sequence on Single View", desc: "Earlier, you learned how to use delay to sequence animations. You can also sequence multiple animations on a single view.", back: .yellow, textColor: .black)
            
          
            Button("Change") {
                change = true
            }
            .font(.title)
            
            Spacer()
            
            Image(systemName: "heart.fill")
                .foregroundColor(.yellow)
                .font(.system(size:150))
            
                //First set of animation changes
                .scaleEffect(change ? 2 : 1)
                .animation(.easeOut(duration: 1), value: change)
            
                //Secondnset of animation changes
                .scaleEffect(change ? 0.75 : 1)
                .animation(.easeIn.delay(1), value: change) // Notice delay
            
            Spacer()
                
        }
    }
}

struct Scope_SequenceOnSingleVIew_Previews: PreviewProvider {
    static var previews: some View {
        Scope_SequenceOnSingleVIew()
    }
}
