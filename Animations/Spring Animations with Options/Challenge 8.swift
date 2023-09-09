//
//  Challenge 8.swift
//  Animations
//
//  Created by HubertMac on 09/09/2023.
//

import SwiftUI

struct Challenge_8: View {
    
    @State private var currentSelectedView = 1

    
    var body: some View {
        ZStack{
            Color("Darkest")
                .ignoresSafeArea()
            Color("Dark")
                .rotationEffect(Angle(degrees: -18))
                .offset(x: -70 ,y: 100)
            
            VStack(spacing:20){
                Text("Welcome")
                Text("SwiftUI Animations")
                    .bold()
                
                Spacer()
                Spacer()
                
                GeometryReader { gp in
                    HStack(spacing: 0) {
                        VStack( spacing: 30){
                            Image("woman.reading")
                            Text("Learn by watching videos and looking at code.")
                                .foregroundColor(.gray)
                                .font(.title)
                                .multilineTextAlignment(.center)
                                .padding(20)
                                .animation(.interpolatingSpring(stiffness: 50, damping: 7).delay(0.1), value: currentSelectedView)
                                
                        }
                        .frame(width: gp.size.width)
                        
                        
                        VStack{
                            Image("woman.solving.problem")
                            Text("Step-by-step exercises, quizes and practical challenges")
                                .foregroundColor(.gray)
                                .font(.title)
                                .multilineTextAlignment(.center)
                                .padding(20)
                                .animation(.interpolatingSpring(stiffness: 50, damping: 7).delay(0.1), value: currentSelectedView)
                        }
                        .frame(width: gp.size.width)
                        
                        
                        VStack{
                            Image("woman.on.bike")
                            Text("Master SwiftUI Animations Today!")
                                .foregroundColor(.gray)
                                .font(.title)
                                .multilineTextAlignment(.center)
                                .padding(20)
                                .animation(.interpolatingSpring(stiffness: 50, damping: 7).delay(0.1), value: currentSelectedView)
                        }
                        .frame(width: gp.size.width)
                        
                        
                    }
                    .frame(width: gp.size.width * 3, alignment: .leading)
                    .offset(x: -CGFloat((currentSelectedView - 1)) * gp.size.width)
                    
                    
                   
                }
                
                
        
                HStack(spacing: 30){
                    
                    Button {
                        currentSelectedView = 1
                    } label: {
                        Circle()
                            .fill(Color(red: 0.983, green: 0.374, blue: 0.361))
                            .frame(height: 50)
                            .overlay(Text("1"))
                            .scaleEffect((currentSelectedView == 1) ? 1.4 : 1 )
                    }

                    Button {
                        currentSelectedView = 2
                    } label: {
                        Circle()
                            .fill(Color(red: 0.983, green: 0.374, blue: 0.361))
                            .frame(height: 50)
                            .overlay(Text("2"))
                            .scaleEffect((currentSelectedView == 2) ? 1.4 : 1 )
                    }
                    
                    Button {
                        currentSelectedView = 3
                    } label: {
                        Circle()
                            .fill(Color(red: 0.983, green: 0.374, blue: 0.361))
                            .frame(height: 50)
                            .overlay(Text("3"))
                            .scaleEffect((currentSelectedView == 3) ? 1.4 : 1 )
                    }
                }
                
               Spacer()
                
                Button {
                } label: {
                    HStack {
                        Text("Continue")
                        Image(systemName: "chevron.right")
                    }
                    .font(.title2)
                    .padding()
                    .padding(.horizontal)
                    .background(Capsule().fill(Color(red: 0.983, green: 0.374, blue: 0.361)))
                }
                .opacity((currentSelectedView == 3) ? 1 : 0)

               
                
            }
            .animation(.interpolatingSpring(stiffness: 40, damping: 7),value: currentSelectedView)
            .foregroundColor(.white)
            .font(.title)
        }
    }
}

struct Challenge_8_Previews: PreviewProvider {
    static var previews: some View {
        Challenge_8()
    }
}
