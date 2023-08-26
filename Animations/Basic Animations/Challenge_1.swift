//
//  Challenge_1.swift
//  Animations
//
//  Created by HubertMac on 18/07/2023.
//

import SwiftUI

struct Challenge_1: View {
   
    @State var change: Bool = false
    
    var body: some View {
        VStack( spacing: 20) {
            HeaderView("Challenge", subtitle: "Move the Circle Shape", desc:"", back: Color.clear, textColor: Color.clear)
            Spacer()
            
            Circle()
                .frame(width: 100)
                .foregroundStyle(.orange)
                .padding()
                .offset(x: change ? -140 : 140, y: change ? -450 : 0)
                .animation(.default, value: change)
            
            Button("Change") {
                change.toggle()
            }
            
            
        }
        .font(.title)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct Challenge_1_Previews: PreviewProvider {
    static var previews: some View {
        Challenge_1()
    }
}
