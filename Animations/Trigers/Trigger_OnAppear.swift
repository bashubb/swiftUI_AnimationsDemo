//
//  Trigger_OnAppear.swift
//  Animations
//
//  Created by HubertMac on 20/07/2023.
//

import SwiftUI

struct Trigger_OnAppear: View {
    
    @State private var expand: Bool = false
    
    var body: some View {
        ZStack {
            Image(systemName: "sun.max.fill")
                .padding()
                .foregroundColor(.white)
                .background(Circle()
                    .fill(Color.green)
                    .scaleEffect(expand ? 20 : 1))
                .onAppear {
                    expand.toggle()
                }
                .animation(.default, value: expand)
            
            VStack {
                HeaderView("Trigger", subtitle: "OnApear", desc:"You can have an animation start as sonn as a view appears.", back: Color.clear, textColor: Color.primary)
                Spacer()
            }
        }
        .font(.title)
    }
}

struct Trigger_OnAppear_Previews: PreviewProvider {
    static var previews: some View {
        Trigger_OnAppear()
    }
}
