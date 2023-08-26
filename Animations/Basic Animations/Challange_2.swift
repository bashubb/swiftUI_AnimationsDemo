//
//  Challange_2.swift
//  Animations
//
//  Created by HubertMac on 18/07/2023.
//

import SwiftUI

struct Challange_2: View {
    
    @State var change: Bool = false
    
    var body: some View {
        VStack(spacing: 15) {
            HeaderView("Challenge", subtitle: "Move the Circle Shape", desc: "", back: Color.clear, textColor: Color.clear)
            
            Circle()
                .frame(width: 100)
                .foregroundColor(.orange)
                .offset(y: change ? 400 : -50 )
                .animation(.linear, value: change)
            
            Spacer()
            
            Button("change") {
                change.toggle()
            }
        }
        .font(.title)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct Challange_2_Previews: PreviewProvider {
    static var previews: some View {
        Challange_2()
    }
}
