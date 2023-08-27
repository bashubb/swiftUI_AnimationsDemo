//
//  Value_ShowHideExpample.swift
//  Animations
//
//  Created by HubertMac on 27/08/2023.
//

import SwiftUI

struct Value_ShowHideExpample: View {
    
    @State var showCard = false
    @State var animatedOnChange = false
    
    var body: some View {
        VStack(spacing: 15) {
            HeaderView("Value", subtitle: "Show & Hide Exapmple", desc: "Here is an example of using the value parameter to turn off every other animation. You want to animate showing a card but then no animation when hiding it ", back: .blue, textColor: .white)
            
            Button {
                showCard.toggle()
                animatedOnChange.toggle()
            } label: {
                Image(systemName: "creditcard").font(.largeTitle)
            }
            
            GeometryReader {geo in
                VStack {
                    HStack {
                        Spacer()
                        Text("Get the Card")
                        Spacer()
                        Button {
                            showCard.toggle()
                        } label: {
                            Text("X").font(.body).padding(8)
                        }.background(Circle().stroke(Color.white)
                        )
                    }
                    .padding(8)
                    .foregroundColor(.white)
                    
                    Rectangle()
                        .cornerRadius(15)
                        .padding()
                }
                .font(.title)
                .background(RoundedRectangle(cornerRadius: 15)
                    .fill(Color.blue))
                .offset(x: showCard ? 0 : -(geo.size.width + 20), y: 0)
                .animation(.easeOut , value: animatedOnChange)
            }
            .padding()
        }
    }
}
struct Value_ShowHideExpample_Previews: PreviewProvider {
    static var previews: some View {
        Value_ShowHideExpample()
    }
}
