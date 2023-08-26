//
//  Challange_4.swift
//  Animations
//
//  Created by HubertMac on 19/07/2023.
//

import SwiftUI

struct Challange_4: View {
    
    @State var change: Bool = false
    
    
    var body: some View {
        ZStack {
            Color(red: 0.954, green: 0.973, blue: 0.99)
                .ignoresSafeArea()
            
            VStack{
                HeaderView("Challenge", subtitle: "ShowLogin", desc: "", back: Color.clear, textColor: Color.clear)
                
            }
            .frame(maxHeight: .infinity, alignment: .top)
            
            
            VStack {
                
                
                
                                
                Text("Already have an account?")
                    .font(.title)
                
                Button ("Login Now"){
                    change.toggle()
                }
                    
                VStack(spacing: 15) {
                    
                    Image(systemName: "lock.fill")
                    TextField("Username", text: .constant(""))
                        .textFieldStyle(.roundedBorder)
                        .font(.title)
                    SecureField("Password", text: .constant(""))
                        .textFieldStyle(.roundedBorder)
                        .font(.title)
                }
                .offset(x: change ? 0 : -600, y: 0)
                .animation(.default, value: change)
                .padding()
                
                
                
            }
            
        }
    }
}

struct Challange_4_Previews: PreviewProvider {
    static var previews: some View {
        Challange_4()
    }
}
