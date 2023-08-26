//
//  Scope_DifferentAnimations.swift
//  Animations
//
//  Created by HubertMac on 23/08/2023.
//

import SwiftUI

struct Scope_DifferentAnimations: View {

    @State private var change = false

    var body: some View {
        VStack{
            HeaderView("Options ", subtitle: "Scope - Different Animation", desc: "With the animation modifier on the top-most parent, all children views will animate. To override the animation, just use another animation modifier.", back: .yellow, textColor: .black)
            
            Button("Change") {
                change.toggle()
            }
            .font(.title)
            
            VStack {
                Text("Use Parent Animation")
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(change ? .yellow : .red )
                    .offset(x: change ? 140 : -140, y:0)
                    .frame(width: 100, height: 100)
                
                Text("Use Own Animation")
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(change ? .yellow : .orange)
                    .offset(x: change ? 140 : -140, y:0)
                    .frame(width: 100, height: 100)
                    .animation(.easeIn, value: change)
            }
            .animation(.easeOut, value: change)
            .font(.title)
            .padding(.top)
                
        }
    }
}

struct Scope_DifferentAnimations_Previews: PreviewProvider {
    static var previews: some View {
        Scope_DifferentAnimations()
    }
}
