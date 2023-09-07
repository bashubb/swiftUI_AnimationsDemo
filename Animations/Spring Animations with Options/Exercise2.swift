//
//  Exercise2.swift
//  Animations
//
//  Created by HubertMac on 07/09/2023.
//

import SwiftUI

struct Exercise2: View {
    
    @State private var change = false
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color("Dark"), Color("Darkest")]), center: .center, startRadius: 10, endRadius: 400)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
               
                Spacer()
                
                Image("Planet")
                    .padding(.vertical)
                    .offset(x: change ? 0 : 400)
                    .animation(.spring(response: 1.5, dampingFraction: 0.5), value: change)
              
                Spacer()
                
                Text("PLANET EXPLORER")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .offset(x: change ? 0 : -400)
                    .animation(.spring(response: 1.5, dampingFraction: 0.5), value: change)
                
                Spacer()
                
                VStack{
                    Text("START")
                        .scaleEffect(change ? 1 : 0.2)
                        .opacity(change ? 1 : 0 )
                        .animation(.interpolatingSpring( stiffness: 25, damping: 5, initialVelocity: 10).delay(0.9), value: change)
                    Text("EXPLORING!")
                        .scaleEffect(change ? 1 : 0.2)
                        .opacity(change ? 1 : 0 )
                        .animation(.interpolatingSpring( stiffness: 25, damping: 5, initialVelocity: 10).delay(1.3), value: change)
                }
                .font(.title)
                .foregroundColor(.gray)
                
                Spacer()
                
                Button {
                    change.toggle()
                } label: {
                    Circle()
                        .fill(Color(red: 0.987, green: 0.38, blue: 0.374))
                        .frame(height: 70)
                        .overlay(Image(systemName: "chevron.right")
                            .foregroundColor(.white)
                            .font(.title))
                        .opacity(change ? 1 : 0 )
                    .animation(.linear(duration: 1.6).delay(0.3), value: change)
                        
                }
                
                

                
            }
            .onAppear{
                change.toggle()
            }
        }
    }
}

struct Exercise2_Previews: PreviewProvider {
    static var previews: some View {
        Exercise2()
    }
}
