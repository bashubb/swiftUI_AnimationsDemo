//
//  Scope_NoAnimations.swift
//  Animations
//
//  Created by HubertMac on 23/08/2023.
//

import SwiftUI

struct Scope_NoAnimations: View {
    
    @State private var change = false
    
    var body: some View {
        VStack{
            HeaderView("Options", subtitle: "Scope - No Animations", desc: "You can also prevent an animation on one of the child views. Use .none parameter in the animation modifier.", back: .yellow, textColor: .black)
            
            Button("Change") {
                change.toggle()
            }
            
            Text("Uses Parent Animation")
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(change ? .yellow : .red)
                .frame(width: 100, height: 100)
                .offset(x: change ? 140 : -140)
            
            
            Text("Uses Own Animation")
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(change ? .yellow : .orange)
                .frame(width: 100, height: 100)
                .offset(x: change ? 140 : -140)
                .animation(.none, value: change)
            
        }
        .animation(.easeOut, value: change)
        .font(.title)
    }
}

struct Scope_NoAnimations_Previews: PreviewProvider {
    static var previews: some View {
        Scope_NoAnimations()
    }
}
