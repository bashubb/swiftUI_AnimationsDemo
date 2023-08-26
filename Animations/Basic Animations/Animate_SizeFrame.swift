//
//  SwiftUIView.swift
//  Animations
//
//  Created by HubertMac on 19/07/2023.
//

import SwiftUI

struct Animate_SizeFrame: View {
    
    @State var change: Bool =  false
    
    var body: some View {
        VStack {
            HeaderView("Animate Properties", subtitle: "Frame", desc: "You can animate the size of an object through the frame modifier's height and width parameters", back: Color.blue, textColor: Color.white)
            
            Button("Change") {
                change.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
                .frame(width: change ? 300 : 100, height: change ? 200 : 100)
                //.scaleEffect(change ? 0.5 : 1)
                
            
            
            Text("Notice haw this changes the layout of the screen. You may want to consider animating with the scaleEffect instead.")
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue)
        }
        .font(.title)
        .animation(.default, value: change)
        
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Animate_SizeFrame()
    }
}
