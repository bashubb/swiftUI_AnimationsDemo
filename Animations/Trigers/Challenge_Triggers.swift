//
//  Challenge_Triggers.swift
//  Animations
//
//  Created by HubertMac on 15/08/2023.
//

import SwiftUI

struct Challenge_Triggers: View {
    
    @GestureState var textPosition =  CGSize.zero
    @State var show = false
    
    var body: some View {
        VStack {
            Text("Kluane National Park")
                .bold()
            
            Image("KluaneNationalPark")
                .resizable()
                .cornerRadius(20)
                .aspectRatio(contentMode: .fill)
                .frame(height:show ? 550 : 250)
                .padding()
                .animation(.default, value: show)
                
            VStack {
                Image(systemName: "chevron.down" )
                    .foregroundColor(.blue)
                    .rotationEffect(Angle(degrees: show ? 180 : 0 ))
                    .onTapGesture {
                        show.toggle()
                    }
                    .animation(.easeIn, value: show)
                
                Text(" Kluane Nationa Park and Resece is in the southwest of Yukon, in Canada. It's a vast wilderness of ice fields, forests and towering peaks like Mount Logan. Trails incluede the King's Throne, which winds above Kathleen Lake to a dramatic view. The Alsek River travels through areas inhabited by grizzly bears.")
                    .animation(.easeIn, value: show)
                    .padding(.horizontal)
                                        
            }
            
            .background(Color.white)
            .cornerRadius(20)
            .offset(x: 0, y : textPosition.height)
            .gesture(DragGesture()
                .updating($textPosition, body: { value, textPosition, transaction in
                    if show {
                        textPosition = value.translation
                    }
                    })
                    .onEnded({ value in
                        if value.translation.height < 100{
                            show = false
                        }
                    }))
            .animation(.default, value: textPosition)
            
            
                
                
                
                
                
                
                
            
        }
        
        .font(.title)
        .animation(.easeIn, value: show)
    }
}

struct Challenge_Triggers_Previews: PreviewProvider {
    static var previews: some View {
        Challenge_Triggers()
    }
}
