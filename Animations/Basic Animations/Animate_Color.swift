//
//  Animate_Color.swift
//  Animations
//
//  Created by HubertMac on 18/07/2023.
//

import SwiftUI

struct Animate_Color: View {
    
    @State var change: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Animatable Properties", subtitle: "Color", desc: "You can animate the change from one color to another.", back: .blue, textColor: .white )
                .frame(height: 210)
                
            
            Text("With Animation")
                
            
            RoundedRectangle(cornerRadius: 20)
                .fill(change ? Color.orange : Color.blue)
                .animation(.default, value: change)
                .padding()
            
            
            Text("No Animation")
            RoundedRectangle(cornerRadius: 20)
                .fill(change ? Color.orange : Color.blue)
                .padding()
            
            Button("Change") {
                change.toggle()
            }
        }
        .font(.title)
    }
}

struct Animate_Color_Previews: PreviewProvider {
    static var previews: some View {
        Animate_Color()
    }
}
