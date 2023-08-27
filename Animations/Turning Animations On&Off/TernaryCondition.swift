//
//  TernaryCondition.swift
//  Animations
//
//  Created by HubertMac on 27/08/2023.
//

import SwiftUI

struct TernaryCondition: View {
    
    @State private var showCard = false
    @State private var animateOnChange = false
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Turn On or OFF", subtitle: "Ternary Opereator in Animation", desc: "You can use a ternary operator in the animation modifier to turn animations on or off.", back: .blue, textColor: .white)
            Button {
                showCard.toggle()
                animateOnChange = true // Turns on animation
            } label: {
                Image(systemName: "creditcard").font(.largeTitle)
            }
            
            GeometryReader { geo in
                VStack {
                    HStack {
                        Spacer()
                        Text("Get the Card ")
                        Spacer()
                        Button {
                            animateOnChange = false // Turns off animation
                            showCard.toggle()
                        } label: {
                            Text("X").font(.body).padding(8)
                                .background(Circle().stroke(Color.white))
                        }
                        .foregroundColor(.white)

                    }
                    
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.black)
                }
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(RoundedRectangle(cornerRadius: 15).fill(Color.blue))
                .padding()
                .offset(x: showCard ? 0 : -geo.size.width, y: 0 )
                .animation(animateOnChange ? .default : .none, value: showCard) // Using ternary operator
                
            }

        }
    }
}

struct TernaryCondition_Previews: PreviewProvider {
    static var previews: some View {
        TernaryCondition()
    }
}
