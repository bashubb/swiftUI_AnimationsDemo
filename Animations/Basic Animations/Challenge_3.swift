//
//  Challenge_3.swift
//  Animations
//
//  Created by HubertMac on 19/07/2023.
//

import SwiftUI

struct Challenge_3: View {
    
    @State var change: Bool = false
    var offsetValue: CGFloat = 200
    
    var body: some View {
        VStack {
            HeaderView("Putting It All Together", subtitle: "End Result", desc: "This is the final animation that you will be building", back: Color.red, textColor: Color.white)
            
            Spacer()
            
            VStack(spacing: 1) {
                
                HStack(alignment: .bottom, spacing: 1) {
                    Rectangle()
                        .frame(width: 100, height: 50)
                        .offset(x: change ?  0 : -250 , y: change ? 0 : -offsetValue )
                    Rectangle()
                        .frame(width: 50, height: 100)
                        .offset(x: change ? 0 : 250, y: change ? 0 : -offsetValue )
                }
                .offset(x: -25)

                HStack(alignment: .top, spacing: 1) {
                    Rectangle()
                        .frame(width: 50, height: 100)
                        .offset(x: change ? 0 : -250, y: change ? 0 : offsetValue )
                    Rectangle()
                        .frame(width: 100, height: 50)
                        .offset(x: change ? 0 : 250, y: change ? 0 : offsetValue  )
                }
                .offset(x: 25)
            }
            .rotationEffect(.degrees(change ? 0 : -90))
            .foregroundStyle(change ? .red : .orange)
            .opacity(change ? 1 : 0)
            
            Spacer()
            
            Button("change"){
                change.toggle()
            }
        }
        .animation(.default, value: change)
        .font(.title)
    }
}

struct Challenge_3_Previews: PreviewProvider {
    static var previews: some View {
        Challenge_3()
    }
}
