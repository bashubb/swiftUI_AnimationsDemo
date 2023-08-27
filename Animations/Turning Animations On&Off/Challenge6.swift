//
//  Challenge.swift
//  Animations
//
//  Created by HubertMac on 27/08/2023.
//

import SwiftUI

struct Challenge6: View {
    
    @State private var showSlider = false
    @State private var showIcons = false
    
    var body: some View {
        ZStack{
            // Background
            Color.black
                .ignoresSafeArea()
            
            
            //Header
            VStack(spacing: 20) {
                Text("CHALLENGE")
                    .foregroundColor(Color("Gold"))
                    .font(.largeTitle)
                Text("Recreate this Animation")
                    .foregroundColor(.gray)
                    .font(.title)
                
                //Rectangle and Slidere
                GeometryReader {geo in
                    VStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color(red: 0.2, green: 0.191, blue: 0.191))
                            .padding(8)
                        
                        //Slider
                        HStack(spacing: 30) {
                            Spacer()
                            Spacer()
                            HStack(spacing:30){
                                Image(systemName: "pencil")
                                Image(systemName: "hand.draw")
                                Image(systemName: "trash.circle")
                                Image(systemName: "scissors")
                            }
                            .opacity(showIcons ? 1 : 0 )
                            
                            // Slider button
                            Button {
                                withAnimation {
                                    showSlider.toggle()
                                }
                                withAnimation(.default.delay(0.4)) {
                                    showIcons.toggle()
                                } // Delayed icons animation
                            } label: {
                                Image(systemName: "line.3.horizontal.decrease")
                                    .rotationEffect(Angle(degrees: -90))
                            }
                            .padding(.horizontal)
                            
                            
                        }
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .frame(width: geo.size.width)
                        .padding()
                        .background(RoundedRectangle(cornerRadius:.infinity).fill(Color("Gold")))
                        .offset(x: showSlider ? -40 : -geo.size.width + 20, y: 0)
                        
                    }
                }
            }
        }
        
    }
}

struct Challenge6_Previews: PreviewProvider {
    static var previews: some View {
        Challenge6()
    }
}
