//
//  Animate_RoundedCorners.swift
//  Animations
//
//  Created by HubertMac on 19/07/2023.
//

import SwiftUI

struct Animate_RoundedCorners: View {
    
    @State var change: Bool = false
    
    var body: some View {
        VStack {
            HeaderView("Animatable Properties", subtitle: "Corner Radius", desc: "You provide a value to set the corner radius of a view. The change of this propert can be animated", back: Color.blue, textColor: Color.white)
            
            Button("change") {
                change.toggle()
            }
            
            RoundedRectangle(cornerRadius: change ? 0 : 70)
                .foregroundStyle(.blue)
                .padding()
            
            Text("You can also animate the cornerRadius modifer")
                .foregroundColor(.white)
                .padding()
                .background(RoundedRectangle(cornerRadius: change ?  0 : 70).fill(Color.blue))
            
        }
        .animation(.default, value: change)
        .font(.title)
    }
}

struct Animate_RoundedCorners_Previews: PreviewProvider {
    static var previews: some View {
        Animate_RoundedCorners()
    }
}
