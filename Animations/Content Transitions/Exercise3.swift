//
//  Exercise3.swift
//  Animations
//
//  Created by HubertMac on 27/09/2023.
//

import SwiftUI

struct Exercise3: View {
    @State var step1 = true
    
    var body: some View {
        ZStack {
            Color("Background3")
            
            
            VStack(spacing: 60) {
                
                Spacer()
                
                if step1 {
                    Text("Ready to travel?")
                        .font(.title.weight(.bold))
                        .foregroundStyle(Color("Secondary3"))
                        .transition(.move(edge: .leading))
                    
                }
                
                if step1 {
                    VStack(spacing: 60) {
                        Image("traveling")
                        
                        RoundedRectangle(cornerRadius: .infinity)
                            .fill(Color("Secondary3"))
                            .frame(height: 100)
                            .frame(maxWidth:.infinity)
                            .offset(x: -50)
                            .animation(.easeOut(duration: 0.6), value: step1)
                            .overlay(Text("Let's go !")
                                .font(.title)
                                .animation(.easeIn(duration: 0.6), value: step1)
                            )
                    }
                    .transition(.move(edge: .leading))
                }
                Spacer()
            }
            .animation(.easeOut(duration:1.1),  value: step1)
            
            
            VStack(spacing:5) {
                if step1 == false {
                    Text("Where do you want to go ?")
                        .bold()
                        .padding(.horizontal, 50)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(Color("Secondary3"))
                        .transition(.move(edge: .top))
                }
                if step1 == false {
                    TripDetailsView()
                        .transition(.move(edge: .trailing))
                }
                if step1 == false {
                    Image("airplane")
                        .padding(.bottom, 100)
                        .transition(.move(edge: .bottom))
                }
            }
            .animation(.easeOut(duration: 0.8), value: step1)
            .padding(.top, 40)
            
            VStack {
                Spacer()
                HStack {
                    Button {
                        step1.toggle()
                    } label: {
                        Image(systemName: "chevron.left.circle.fill")
                            .rotationEffect(Angle(degrees: step1 ? 180 : 0))
                    }
                    
                    if step1 == false{
                        Button {
                            step1.toggle()
                        } label: {
                            Image(systemName: "chevron.right.circle.fill")
                                .transition(.move(edge: .trailing).combined(with: .opacity))
                        }

                    }
                }
                .font(.system(size: 50))
            }
            .padding(.bottom, 75)
            
        }
        .font(.largeTitle)
        .tint(Color("Accent3"))
        .ignoresSafeArea()
    }
}

#Preview {
    Exercise3()
}



struct TripDetailsView: View {
    var body: some View {
        VStack(alignment:. leading, spacing: 15) {
            Text("Destination:")
            Button(action:{}){
                Text("Select")
                Spacer()
                Image(systemName: "chevron.right")
            }
            Text("Departure:")
            Button(action:{}){
                Text("Today")
                Spacer()
                Image(systemName: "chevron.right")
            }
            Text("Return")
            Button(action:{}){
                Text("Tomorrow")
                Spacer()
                Image(systemName: "chevron.right")
            }

        }
        .padding(25)
        .background(RoundedRectangle(cornerRadius: 10)
            .foregroundStyle(Color("Secondary3")))
        .padding(40)
        .font(.body)
    }
}
