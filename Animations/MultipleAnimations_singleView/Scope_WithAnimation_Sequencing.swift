//
//  Scope_WithAnimation_Sequencing.swift
//  Animations
//
//  Created by HubertMac on 23/08/2023.
//

import SwiftUI

struct Scope_WithAnimation_Sequencing: View {
    
    @State private var toggle1 = false
    @State private var toggle2 = false
    @State private var toggle3 = false
    
    var body: some View {
        VStack {
            HeaderView("With Animation", subtitle: "Sequencing", desc: "Here is a way to use withAnimation to sequence animations. It's similar to what you learned with earlier with the delay modifier.", back: .yellow, textColor: .black)
            
            Button("Change") {
                withAnimation {
                    toggle1.toggle()
                }
                
                withAnimation(.default.delay(0.4)) {
                    toggle2.toggle()
                }
                
                withAnimation(.default.delay(0.8)) {
                    toggle3.toggle()
                }
            }
            
            Spacer()
            
            Group {
                Image(systemName: "1.circle")
                    .opacity(toggle1 ? 1 : 0)
                Image(systemName: "2.circle")
                    .opacity(toggle2 ? 1 : 0)
                Image(systemName: "3.circle")
                    .opacity(toggle3 ? 1 : 0)
            }
            .font(.system(size:90))
            
            Spacer()
        }
        .font(.title)
    }
}

struct Scope_WithAnimation_Sequencing_Previews: PreviewProvider {
    static var previews: some View {
        Scope_WithAnimation_Sequencing()
    }
}
