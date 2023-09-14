//
//  Trigger_Gesture_Drag.swift
//  Animations
//
//  Created by HubertMac on 02/08/2023.
//

import SwiftUI

struct Trigger_Gesture_Drag: View {
    
    @GestureState private var menuOffset = CGSize.zero
    @State private var currentMenuY: CGFloat = 0.0
    
    var body: some View {
        VStack {
            HeaderView("Triggers", subtitle: "Drag Gesture", desc: "Dragging a view will move it but you can add animation to complete moving a view into its final location smoothly", back: .green, textColor: .primary)
            
            
            Spacer()
            
            VStack {
                
                Circle()
                    .fill(Color.green)
                    .frame(width: 100)
                    .overlay(Image(systemName: "line.horizontal.3")
                        .foregroundColor(.white)
                        .offset(x: 0, y: -20))
                    .offset(x: 0, y: -50)
                
                HStack{
                    Spacer()
                }
                Spacer()
            }
            .frame(height: 200)
            .background(RoundedRectangle(cornerRadius: 20)
                .fill(Color.green))
            .offset(x: 0, y: currentMenuY + menuOffset.height)
            .gesture(
                DragGesture()
                    .updating($menuOffset, body: { value, menuOffset, transaction in
                        menuOffset = value.translation
                    })
                    .onEnded({ value in
                        //animation
                        if value.translation.height > 100 {
                            currentMenuY = 200 // collapsed
                        } else {
                            currentMenuY = 0 // expanded
                        }
                    })
            )
            .animation(.default, value: currentMenuY) //animate the menu sliding into final position
        }
        .font(.title)
    }
}

struct Trigger_Gesture_Drag_Previews: PreviewProvider {
    static var previews: some View {
        Trigger_Gesture_Drag()
    }
}
