//
//  Exercise.swift
//  Animations
//
//  Created by HubertMac on 15/08/2023.
//

import SwiftUI

struct Exercise: View {
    
    @GestureState private var popUpLocation = CGSize.zero
    @State private var isShown = true
    
    var body: some View {
        ZStack{
            VStack{
                HeaderView("Triggers", subtitle: "Show Popup", desc: "The popup will animate when shown and animate will disappears.", back: .yellow, textColor: .primary)
                Spacer()
                Button {
                    isShown = true
                } label: {
                    Text("Show Popup").font(.title)
                }
                
            }
            .blur(radius: isShown ? 2 : 0)
            .animation(.easeOut, value: isShown)
            
            
            if isShown {
                
                ZStack {
                    
                    Color.black
                        .ignoresSafeArea()
                        .opacity(0.3)
                        .onTapGesture {
                            isShown  = false
                        }
                    
                    
                    PopUpCard(isShown: $isShown)
                        .offset(popUpLocation)
                        .gesture(
                            DragGesture(minimumDistance: 100)
                                .updating($popUpLocation, body: { value , popUpLocation, transaction in
                                    popUpLocation = value.translation
                                })
                                .onEnded({ value in
                                        isShown = false
                                }))
                }
                .animation(.default, value: isShown)
            }
        }
        .animation(.easeIn, value: isShown)
    }
}

struct Exercise_Previews: PreviewProvider {
    static var previews: some View {
        Exercise()
    }
}

struct PopUpCard: View {
    
    @Binding var isShown: Bool
    
    var body: some View {
        VStack {
            Text("Drag popup off the screen ")
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.yellow)
            
            Spacer()
            Text("You can also tap outside of the popup to close")
            Spacer()
            Button("Or Tap This Button to Close") {
                isShown = false
            }
            .padding()
            
        }
        .background(Color.white)
        .cornerRadius(20)
        .frame(width: 360, height: 250)
        
        
    }
}
