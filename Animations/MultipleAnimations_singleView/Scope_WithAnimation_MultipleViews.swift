//
//  Scope_WithAnimation_MultipleViews.swift
//  Animations
//
//  Created by HubertMac on 23/08/2023.
//

import SwiftUI

struct Scope_WithAnimation_MultipleViews: View {
    
    @State private var unlock = false
    @State private var open = false
    
    var body: some View {
        VStack {
            HeaderView("With Animation ", subtitle: "Multiple Views", desc: "Any value changed within the with Animation closure will animate the ciew that uses that value in its modifiers. This value can exist anywhere in the view hierrarchy and affect many views", back: .yellow, textColor: .black)
                .layoutPriority(1)
            
            
            Image(systemName: unlock ? "lock.open" : "lock")
                .offset(x: unlock ? 4.5 : 0)
                .animation(.none, value: unlock)
                .padding()
                .onTapGesture {
                    withAnimation {
                        unlock.toggle()
                    }
                }
            
            GeometryReader { geo in
                ZStack {
                    
                    VStack {
                        Text("Hello")
                        Image(systemName: "heart.fill")
                            .foregroundColor(.pink)
                    }
                    .font(.system(size: 60))
                    
                    HStack(spacing: 0) {
                        Color.green
                            .offset(x: open ? -(geo.size.width / 2) : 0, y: 0)
                        Color.green
                            .offset(x: open ? (geo.size.width / 2) : 0, y: 0)
                    }
                    
                    Button("Open") {
                        withAnimation {
                            open.toggle()
                        }
                    }
                    .opacity(open ? 0 : 1)
                    
                    Color.red
                        .opacity(unlock ? 0 : 1)
                }
                
            }
            .ignoresSafeArea()
        }
        .font(.title)
    }
}

struct Scope_WithAnimation_MultipleViews_Previews: PreviewProvider {
    static var previews: some View {
        Scope_WithAnimation_MultipleViews()
    }
}
