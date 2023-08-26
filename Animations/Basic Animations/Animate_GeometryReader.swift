//
//  Animate_GeometryReader.swift
//  Animations
//
//  Created by HubertMac on 19/07/2023.
//

import SwiftUI

struct Animate_GeometryReader: View {
    
    @State var change: Bool = false
    
    var body: some View {
        VStack {
            HeaderView("Animate Properties", subtitle: "In Geometry Reader", desc: "You can animate the center point(position) of a view within a GeometryReader's cpprdomate space.", back: Color.blue, textColor: Color.white)
            
            GeometryReader { geo in
                
                RoundedRectangle(cornerRadius: 12)
                    .frame(width: 100, height: 100)
                    .foregroundColor(.blue)
                    .position(change ? CGPoint(x: 50, y: 50) : CGPoint(x: geo.size.width - 50, y: geo.size.height - 50))
                    .animation(.default, value: change)
                
                
            }
            
            Button("Change") {
                change.toggle()
            }
        }
        .font(.title)
    }
}

struct Animate_GeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        Animate_GeometryReader()
    }
}
