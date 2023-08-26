//
//  Duration_Parameter.swift
//  Animations
//
//  Created by HubertMac on 16/08/2023.
//

import SwiftUI

struct Duration_Parameter: View {
    
    @State private var change = false
    var body: some View {
        VStack(spacing:10) {
            HeaderView("Animation Options", subtitle: "Duration Parameter", desc: "To set a duration, you need to turn the animation type into a function. Like .easeInOut into easeInOut(duration:1).", back: .purple, textColor: .white)
            
            Text("Duration: Default")
            Image(systemName: "hare.fill")
                .foregroundColor(.purple)
                .frame(width: 100, height: 100)
                .offset(x: change ? 150 : -150, y: 0)
                .animation(.easeOut, value: change)
            
            Text("Duration: 2")
            Image(systemName: "hare.fill")
                .foregroundColor(.purple)
                .frame(width: 100, height: 100)
                .offset(x: change ? 150 : -150, y: 0)
                .animation(.easeOut(duration: 2), value: change)
            
            Button("Change") {
                change.toggle()
            }
            
            Text("Note: The default animation duration in SwiftUI is less than a second.Somewhere around 0.4 seconds.")
                .foregroundColor(.white)
                .padding()
                .background(Color.purple)
                
        }
        .font(.title)
    }
}

struct Duration_Parameter_Previews: PreviewProvider {
    static var previews: some View {
        Duration_Parameter()
    }
}
