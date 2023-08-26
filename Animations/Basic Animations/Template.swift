//
//  ContentView.swift
//  Animations
//
//  Created by HubertMac on 18/07/2023.
//

import SwiftUI

struct Template: View {
    var body: some View {
        VStack(spacing: 15) {
           
            HeaderView("Title", subtitle: "subtitle", desc: "Here is my description of this view ", back: Color.blue, textColor: Color.white)
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Template()
    }
}


        

