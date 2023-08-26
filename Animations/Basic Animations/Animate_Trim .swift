//
//  Animate_Trim .swift
//  Animations
//
//  Created by HubertMac on 19/07/2023.
//

import SwiftUI

struct Animate_Trim_: View {
    
    @State var change: Bool = false
    @State var circleProgress: CGFloat = 1.0
    var body: some View {
        VStack {
            HeaderView("Animatable Properties", subtitle: "Trim", desc: "Animating the trim of a circle is a great way to show progress", back: Color.blue, textColor: Color.white)
            
            Button("Change") {
                change.toggle()
                circleProgress = change ? 0.25 : 1
            }
            
            Spacer()
            
                Circle()
                    .trim(from: 0, to: circleProgress)
                    .stroke(Color.blue, style: StrokeStyle(lineWidth: 40, lineCap: .round))
                    .frame(width: 300)
                    .rotationEffect(.degrees(-90))
                    .animation(.default, value: change)
            
            Spacer()
            
                
            
        }
        .font(.title)
    }
}

struct Animate_Trim__Previews: PreviewProvider {
    static var previews: some View {
        Animate_Trim_()
    }
}
