//
//  Animate_Offset.swift
//  Animations
//
//  Created by HubertMac on 19/07/2023.
//

import SwiftUI

struct Animate_Offset: View {
    
    @State var change: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Animatable Properties",
                       subtitle: "Offset",
                       desc: "Animate the location of a view using X and Y coordinates",
                       back: Color.blue,
                       textColor: Color.white)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundStyle(.blue)
                .cornerRadius(12)
                .offset(x: change ? 140 : -140)
                .animation(.default, value: change)
            
            Text(" Offset also uses a CGsize object.a width with positive value moves right, negative values move left. For height, positive values move up, negative values move down")
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundStyle(.white)
                .background(Color.blue)
                
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundStyle(.blue)
                .cornerRadius(12)
                .offset(change ? CGSize(width: 140, height: 0)
                        : CGSize(width: -140, height: 0))
                .animation(.default, value: change)
            
            
            HStack{
                Button("Change") {
                    change.toggle()
                }
            }
                
                
        }
        .font(.title)
    }
}

struct Animate_Offset_Previews: PreviewProvider {
    static var previews: some View {
        Animate_Offset()
    }
}
