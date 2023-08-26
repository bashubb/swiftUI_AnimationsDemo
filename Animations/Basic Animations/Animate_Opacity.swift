//
//  Animate_Opacity.swift
//  Animations
//
//  Created by HubertMac on 19/07/2023.
//

import SwiftUI

struct Animate_Opacity: View {
    
    @State var change: Bool =  false
    
    var body: some View {
        VStack {
            HeaderView("Animate Properties", subtitle: "Opacity", desc: "Opacity is the quality of thickness, solidness or opaqueness. The more opacity the more solid something apeerars (less transparent).", back: Color.blue, textColor: Color.white)
            
            Button("Show/Hide") {
                change.toggle()
            }
            
            RoundedRectangle(cornerRadius: 10)
                .padding()
                .foregroundColor(.blue)
                .opacity(change ? 0 : 1)
                .animation(.default, value: change)
            
        }
        .font(.title)
    }
}

struct Animate_Opacity_Previews: PreviewProvider {
    static var previews: some View {
        Animate_Opacity()
    }
}
