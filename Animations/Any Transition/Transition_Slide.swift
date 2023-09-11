//
//  Transition_Slide.swift
//  Animations
//
//  Created by HubertMac on 11/09/2023.
//

import SwiftUI

struct Transition_Slide: View {
    
    @State private var showLogin = false
    
    @State private var userName = ""
    @State private var password = ""
    
    
    var body: some View {
        ZStack {
            Color("Darkest")
                .ignoresSafeArea()
            
            VStack{
                Text("Transitions")
                    .foregroundColor(Color.gray.opacity(0.7))
                    .font(.system(size: 70))
                
                Text("Slide")
                    .foregroundColor(.white)
                
                
                Spacer()
                
                if showLogin {
                    VStack {
                        Image(systemName: "lock.shield")
                            .font(.system(size: 70))
                            .foregroundColor(Color("Gold"))
                        TextField("user name", text: $userName)
                            .padding(.vertical)
                        SecureField("password",text: $password)
                            .padding(.vertical)
                        
                        Button("Login") {
                            
                        }
                        .foregroundColor(.red)
                            
                    }
                    .textFieldStyle(.roundedBorder)
                    .padding()
                    .transition(.slide)
                }
                
                Spacer()
                
            }
            .animation(.easeInOut(duration: 1), value: showLogin)
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)){
                    showLogin = true
                }
            }
            .font(.title)
        }
    }
}

struct Transition_Slide_Previews: PreviewProvider {
    static var previews: some View {
        Transition_Slide()
    }
}
