//
//  Trigger_SegmentedControl.swift
//  Animations
//
//  Created by HubertMac on 20/07/2023.
//

import SwiftUI

struct Trigger_SegmentedControl: View {
    
    @State private var segment = 0
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Triggers", subtitle: "Segmented Control", desc: "A segmented control (picker) can also trigger animations, such as sliding views into and out of place.", back: Color.green, textColor: Color.primary)
            
            Picker("Day&Night", selection: $segment) {
                Text("Day ☀️").tag(0)
                Text("Night 🌙").tag(1)
            }
            .padding(.horizontal)
            .pickerStyle(.segmented)
            
            GeometryReader {geo in
                ZStack {
                    VStack(spacing: 20) {
                        HStack {
                            Spacer()
                            Image(systemName: "sun.max.fill").font(.system(size: 50))
                            Spacer()
                        }.padding(.top, 24)
                        Text("The day report")
                        Spacer()
                    }
                    .background(Rectangle().fill(Color.yellow))
                    .foregroundColor(.white)
                    .cornerRadius(12)
                    .offset(x: segment == 0 ? 0 : -geo.size.width, y: 0)
                    .animation(.default, value: segment)
                    
                    
                    VStack(spacing: 20) {
                        HStack {
                            Spacer()
                            Image(systemName: "moon.fill").font(.system(size: 50))
                            Spacer()
                        }.padding(.top, 24)
                        Text("The day report")
                        Spacer()
                    }
                    .background(Rectangle().fill(Color.blue))
                    .foregroundColor(.white)
                    .cornerRadius(12)
                    .offset(x: segment == 1 ? 0 : geo.size.width, y: 0)
                    .animation(.default, value: segment)
                    
                }
                .shadow(radius: 15)
                .padding(.horizontal)
            }
    
        }
    }
}

struct Trigger_SegmentedControl_Previews: PreviewProvider {
    static var previews: some View {
        Trigger_SegmentedControl()
    }
}
