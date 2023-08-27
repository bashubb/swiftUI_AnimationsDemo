//
//  Scope_WithAnimation_Sequencing_SameView.swift
//  Animations
//
//  Created by HubertMac on 26/08/2023.
//

import SwiftUI

struct Scope_WithAnimation_Sequencing_SameView: View {
    
    @State var expandMoreInfo = false
    @State var showInfo = false
    
    var body: some View {
        VStack {
            HeaderView("With Animation", subtitle: "Sequencing with Parent/Child", desc: "This solution works correctly when using withAnimation to animate the parent and the child views. Notice you need a second state variable for the second animation.", back: .yellow, textColor: .black)
            
            
            GeometryReader { geo in
                VStack {
                    HStack {
                        Image(systemName: "info.circle")
                            .padding(.horizontal, 8)
                        Text("Login Help")
                        
                        Spacer()
                    }
                    .padding(.vertical)
                    
                    VStack {
                        Image(systemName:"slider.horizontal.3")
                            .font(.largeTitle)
                        Text("Appear after parent is done animating out .")
                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 15).opacity(0.1))
                    .padding(.horizontal)
                    .opacity(showInfo ? 1 : 0 )
                    
                    
                    
                }
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, alignment:.leading)
                .background(Color.yellow)
                .cornerRadius(15)
                .offset(x: expandMoreInfo ? 10 : geo.size.width - 60, y: expandMoreInfo ? 10 : geo.size.height - 65 )
                .onTapGesture {
                    withAnimation {
                        expandMoreInfo.toggle()
                    }
                    withAnimation(.default.delay(0.5)) {
                        showInfo.toggle()
                    }
                }
                
            }
            .ignoresSafeArea(edges: .bottom)
            .font(.title)
        }
    }
}

struct Scope_WithAnimation_Sequencing_SameView_Previews: PreviewProvider {
    static var previews: some View {
        Scope_WithAnimation_Sequencing_SameView()
    }
}
