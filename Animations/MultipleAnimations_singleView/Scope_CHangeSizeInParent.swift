//
//  Scope_CHangeSizeInParent.swift
//  Animations
//
//  Created by HubertMac on 23/08/2023.
//

import SwiftUI

struct Scope_CHangeSizeInParent: View {
    
    @State private var change = false
    
    var body: some View {
        VStack {
            HeaderView("Options", subtitle: "Change Size in Parent", desc: "Put the animation modifier on the parent so all views animate when one changes", back: .yellow, textColor: .black)
                .layoutPriority(1)
            HStack{
                Color.yellow
                VStack{
                    Color.yellow
                        .frame(minHeight: 20)
                    Color.green
                        .frame(width: change ? 200 : 100, height: change ? 250 :100)
                    Color.yellow
                        .frame(minHeight: 20)
                }
                Color.yellow
            }
            Color.yellow
            Button("Change") {
                change.toggle()
            }
            .font(.title)
            
        }
        .animation(.default, value: change)
    }
}

struct Scope_CHangeSizeInParent_Previews: PreviewProvider {
    static var previews: some View {
        Scope_CHangeSizeInParent()
    }
}
