//
//  Trigger_OnDisappear.swift
//  Animations
//
//  Created by HubertMac on 20/07/2023.
//

import SwiftUI

struct Trigger_OnDisappear: View {
    
    @State private var showTip = true
    @State private var showTipButton = false
    
    var body: some View {
        VStack {
            HeaderView("Triggers", subtitle: "On Disappear", desc: "When you make a view go away, you can trigger an animation on how it disappears.", back: Color.green, textColor: Color.primary)
            
            Spacer()
            
            if showTip {
                VStack(spacing: 20) {
                    HStack{
                        Image(systemName: "info.circle.fill")
                        Spacer()
                        Text("Tip of the Day")
                        Spacer()
                    }.foregroundColor(.white)
                    Spacer()
                    Button("Got It") {
                        showTip = false
                    }
                }
                .padding()
                .background(Rectangle().fill(Color.green).shadow(radius: 3))
                .padding(.horizontal)
                .frame(height: 200)
                .onDisappear {
                    withAnimation {
                        showTipButton = true
                    }
                    
                }
            }
            
            if showTipButton {
                HStack {
                    Button {
                        showTipButton = false
                        showTip = true
                    } label: {
                        Image(systemName: "info.circle")
                            .foregroundColor(.blue)
                    }
                    .padding(.leading, 24)
                    
                    Spacer()

                }
            }
        }
        .animation(.default, value: showTip)
        .font(.title)
    }
}

struct Trigger_OnDisappear_Previews: PreviewProvider {
    static var previews: some View {
        Trigger_OnDisappear()
    }
}
