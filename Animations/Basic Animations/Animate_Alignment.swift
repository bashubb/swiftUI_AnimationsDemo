//
//  Animate_Alignment.swift
//  Animations
//
//  Created by HubertMac on 19/07/2023.
//

import SwiftUI

struct Animate_Alignment: View {
    
    @State var change: Bool = false
    
    var body: some View {
        VStack(spacing:15) {
            HeaderView("Animate Properties", subtitle: "Alignment Change", desc: "You can animate the alignment change inside a container view", back: Color.blue, textColor: Color.white)
                
            
            VStack(alignment: change ? .trailing : .leading ) {
                
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 100,height: 100)
                    .foregroundStyle(.blue)
                    .animation(.default, value: change)
                
                HStack {
                    Spacer()
                }
            }
            
            
            
            
                Text("Inside an HStack:")
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(.white)
                    .padding()
                    .background(Color.blue)
            
            
            HStack(alignment: change ? .bottom : .top) {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 100,height: 100)
                    .foregroundStyle(.blue)
                    .animation(.default, value: change)
                VStack {
                    Spacer()
                }
            }
            
            
            Button("Change") {
                change.toggle()
            }
            
                
            
        }
        .font(.title)
        
    }
}

struct Animate_Alignment_Previews: PreviewProvider {
    static var previews: some View {
        Animate_Alignment()
    }
}
