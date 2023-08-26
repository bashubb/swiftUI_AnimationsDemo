//
//  Trigger_Button.swift
//  Animations
//
//  Created by HubertMac on 20/07/2023.
//

import SwiftUI

struct Trigger_Button: View {
    
    @State var showButtons : Bool = true
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            VStack {
                HeaderView("Triggers", subtitle: "Buttons", desc: "You've seen this example a lot now. The tap of a button triggers the start of the animation", back: Color.green, textColor: Color.primary)
                Spacer()
            }
            
            
            Group {
                Button {
                    showButtons.toggle()
                } label: {
                    Image(systemName: "bag.badge.plus")
                        .padding(24)
                        .rotationEffect(.degrees(showButtons ? 0 : -90))
                        .background(Circle().fill(Color.green).shadow(radius: 8, x:4, y: 4 ))
                        .opacity(showButtons ? 1 : 0)
                        .offset(x: 0, y: showButtons ? -150 : 0)
                }
                
                Button {
                    showButtons.toggle()
                } label: {
                    Image(systemName: "gauge.badge.plus")
                        .padding(24)
                        .rotationEffect(.degrees(showButtons ? 0 : 90))
                        .background(Circle().fill(Color.green).shadow(radius: 8, x:4, y: 4 ))
                        .opacity(showButtons ? 1 : 0)
                        .offset(x: showButtons ? -110 : 0, y: showButtons ? -110 : 0 )
                }
                
                Button {
                    showButtons.toggle()
                } label: {
                    Image(systemName: "calendar.badge.plus")
                        .padding(24)
                        .rotationEffect(.degrees(showButtons ? 0 : 90))
                        .background(Circle().fill(Color.green).shadow(radius: 8, x:4, y: 4 ))
                        .opacity(showButtons ? 1 : 0)
                        .offset(x: showButtons ? -150 : 0, y: showButtons ? 0 : 0 )
                        
                }
                
                Button {
                    showButtons.toggle()
                } label: {
                    Image(systemName: "plus")
                        .padding(24)
                        .rotationEffect(.degrees(showButtons ? 0 : -90))
                        .background(Circle().fill(Color.green).shadow(radius: 8, x:4, y: 4 ))
                }
            }
            .tint(.white)
            .padding(.trailing, 20)
            .animation(.default, value:showButtons)
        }
    }
}

struct Trigger_Button_Previews: PreviewProvider {
    static var previews: some View {
        Trigger_Button()
    }
}
