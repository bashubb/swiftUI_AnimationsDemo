//
//  Animate_TextSize.swift
//  Animations
//
//  Created by HubertMac on 19/07/2023.
//

import SwiftUI

struct Animate_TextSize: View {
    
    @State var change: Bool = false
    
    var body: some View {
        VStack {
            HeaderView("Animatable Properties", subtitle: "Text Size", desc: "You can also animate text size.", back: Color.blue, textColor: Color.white)
            
            Button("Change") {
                change.toggle()
            }
            
            
            VStack {
                
                Text("Hello!")
                    .font(.system(size: change ? 150 : 20))
                    .animation(.default, value: change)
            }
            .frame(maxHeight: .infinity)
            
        }
        .font(.title)
    }
}

struct Animate_TextSize_Previews: PreviewProvider {
    static var previews: some View {
        Animate_TextSize()
    }
}
