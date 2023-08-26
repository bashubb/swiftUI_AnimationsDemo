//
//  Trigger_Toggle.swift
//  Animations
//
//  Created by HubertMac on 20/07/2023.
//

import SwiftUI

struct Trigger_Toggle: View {
    
    @State private var isOn: Bool = false
    @State private var extraInfo = ""
    @State private  var extraAmount = 0.65
    
    var body: some View {
        VStack(spacing:20) {
            HeaderView("Triggers", subtitle: "Toggle", desc: "The toggle can also be used to trigger animations. Maybe you want to enable or show options.", back: Color.green, textColor: Color.primary)
            
            Toggle("Extra Options", isOn: $isOn)
                .padding(.horizontal)
            
            Group {
                VStack {
                    Image(systemName: "hammer.fill")
                    Text("Your extra options!")
                    TextField("Extra Info", text: $extraInfo)
                        .textFieldStyle(.roundedBorder)
                        .disabled(isOn ? false : true )
                    Slider(value: $extraAmount)
                        .disabled(isOn ? false : true)
                }
                .padding(28)
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.green))
                
            }
            .padding(.horizontal)
            .saturation(isOn ? 1 : 0 )
            .opacity(isOn ? 1 : 0.25)
            .animation(.default, value: isOn)
        }
    }
}

struct Trigger_Toggle_Previews: PreviewProvider {
    static var previews: some View {
        Trigger_Toggle()
    }
}
