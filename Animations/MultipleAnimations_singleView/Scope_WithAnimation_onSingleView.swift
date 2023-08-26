//
//  Scope_WithAnimation_onSingleView.swift
//  Animations
//
//  Created by HubertMac on 23/08/2023.
//

import SwiftUI

struct Scope_WithAnimation_onSingleView: View {
    
    @State private var flipHorizontaly = false
    @State private var flipVerticaly = false
    
    var body: some View {
        VStack {
            HeaderView("With Animation", subtitle: "On a single View", desc: "Animation from a state variable is very powerful because it allows you to animate a single property, independently of other property animations.", back: .yellow, textColor: .black)
                .layoutPriority(1)
            
            HStack{
                Button {
                    withAnimation {
                        flipHorizontaly.toggle()
                    }
                } label: {
                    Image(systemName: "flip.horizontal.fill")
                        .font(.system(size: 50))
                        .padding()
                }

                Button {
                    withAnimation {
                        flipVerticaly.toggle()
                    }
                } label: {
                    Image(systemName: "flip.horizontal.fill")
                        .font(.system(size: 50))
                        .rotationEffect(.degrees(90))
                        .padding()
                }

            }
            
            GeometryReader { geo in
                Image("KluaneNationalPark")
                    .resizable()
                    .frame(width: geo.size.width - 40)
                    .aspectRatio( contentMode: .fit)
                    .cornerRadius(20)
                    .scaleEffect(x: flipHorizontaly ? -1 : 1, y: flipVerticaly ? -1 : 1 )
                    .padding()
                    
            }
        }
    }
}

struct Scope_WithAnimation_onSingleView_Previews: PreviewProvider {
    static var previews: some View {
        Scope_WithAnimation_onSingleView()
    }
}
