//
//  Exercise1.swift
//  Animations
//
//  Created by HubertMac on 27/08/2023.
//

import SwiftUI

struct Exercise1: View {
    
    @State private var show = false
    @State private var name = ""
    @State private var password = ""
    
    
    var body: some View {
        ZStack{
            RadialGradient(colors: [Color("Dark"), Color("Darkest")], center: .center, startRadius: 10, endRadius: 400)
            
            VStack(spacing: 15){
                
                Text("Exercise")
                    .foregroundColor(Color("Gold"))
                    .font(Font.custom("DIN Condensed Bold", size: 70))
                Text("Show Login")
                    .foregroundColor(.gray)
                
                Spacer()
                
                Image(systemName: "lock.shield")
                    .font(.system(size: 70))
                    .foregroundColor(Color("Gold"))
                    .scaleEffect(show ? 1 : 4)
                    .animation(.easeIn(duration: 0.5), value: show)
                
                
                VStack {
                    TextField("Username", text: $name)
                        .opacity(show ? 1 : 0)
                        .offset(x: show ? 0 : -300, y: 0 )
                        .animation(.easeOut(duration:0.5).delay(0.5), value: show)
                    SecureField("Password", text: $password)
                        .opacity(show ? 1 : 0)
                        .offset(x: show ? 0 : -300, y: 0 )
                        .animation(.easeOut(duration:0.5).delay(0.7), value: show)
                    Button("Login") {
                        
                    }
                    .opacity(show ? 1 : 0)
                    .offset(x: show ? 0 : -300, y: 0 )
                    .foregroundColor(.white)
                    .animation(.easeOut(duration:0.5).delay(0.9), value: show)
                    
                }
                .padding()
                .textFieldStyle(.roundedBorder)
                
                Spacer()
                Spacer()
            }
            .padding(.top, 60)
            .onAppear{
                show = true
            }
            
        }
        .font(.title)
        .ignoresSafeArea()
        
        
    }
}

struct Exercise1_Previews: PreviewProvider {
    static var previews: some View {
        Exercise1()
    }
}
