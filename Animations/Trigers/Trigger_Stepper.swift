//
//  Trigger_Stepper.swift
//  Animations
//
//  Created by HubertMac on 20/07/2023.
//

import SwiftUI

struct Trigger_Stepper: View {
    
    @State private var stepperValue: CGFloat = 1.0
    
    var body: some View {
        VStack {
            HeaderView("Triggers", subtitle: "Stepper", desc: "The stepper increments and decrements values which can by applied to a number of modifiers and then animater", back: Color.green, textColor: Color.primary)
            
            ZStack{
                ForEach(1...40, id: \.self) {_ in
                    Circle()
                        .foregroundColor(.green).opacity(0.2)
                        .frame(width: .random(in: 1...100),
                               height: .random(in:1...100))
                        .position(x: .random(in: stepperValue...400),
                                  y: .random(in: stepperValue...400))
                        .animation(.default, value:stepperValue)
                }
            }
            
            Stepper("Adjust", value:$stepperValue, in: 1.0...5)
                .padding()
        }
        .font(.title)
    }
}

struct Trigger_Stepper_Previews: PreviewProvider {
    static var previews: some View {
        Trigger_Stepper()
    }
}
