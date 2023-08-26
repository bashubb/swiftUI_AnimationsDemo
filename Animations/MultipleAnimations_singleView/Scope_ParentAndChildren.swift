//
//  Scope_ParentAndChildren.swift
//  Animations
//
//  Created by HubertMac on 22/08/2023.
//

import SwiftUI

struct Scope_ParentAndChildren: View {
    
    @State private var change = false
    
    var body: some View {
        VStack{
            HeaderView("Options", subtitle: "Scope - Parent & Children", desc:"The animation modifier can go on a parent vview to animate all children within." , back: .yellow, textColor: .primary)
            HStack {
                Color.blue
                    .hueRotation(Angle.degrees(change ? 180 : 0))
                Color.green
                    .hueRotation(Angle.degrees(change ? 180: 0))
                Color.red
                    .hueRotation(Angle.degrees(change ? 180 : 0))
            }
            
            Button("Change") {
                change.toggle()
            }
        }
        .animation(.linear, value: change)
        .font(.title)
        
    }
}

struct Scope_ParentAndChildren_Previews: PreviewProvider {
    static var previews: some View {
        Scope_ParentAndChildren()
    }
}
