//
//  Example_NoAnimation.swift
//  Animations
//
//  Created by HubertMac on 18/07/2023.
//

import SwiftUI

struct Example_NoAnimation: View {
    
    @State var change: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Example",
                       subtitle: "Parts of Animation",
                       desc: "The button changes a variable that then changes a view's property.That property change causes a change on the screen", back: Color.orange, textColor: Color.primary)
            
            Circle()
                .frame(width: 100)
                .foregroundColor(.orange)
                .offset(y: change ? 300 : 0 )
            // animate change
                .animation(.easeInOut, value: change)
            
            Spacer()
            
            Button {
                change.toggle()
            } label: {
                Text("Change")
                    .font(.title)
            }

            }
        
        
        
    }
}

struct Example_NoAnimation_Previews: PreviewProvider {
    static var previews: some View {
        Example_NoAnimation()
    }
}
