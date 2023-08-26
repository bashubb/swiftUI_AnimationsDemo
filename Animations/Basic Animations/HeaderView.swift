//
//  HeaderView.swift
//  Animations
//
//  Created by HubertMac on 18/07/2023.
//

import SwiftUI

struct HeaderView: View {
    
    var Mytitle: String = "Title"
    var subtitle:String =  "Subtitle"
    var desc:String = "Here's for description"
    var back:Color = Color.blue
    var textColor: Color = Color.white
    
    init(_ Mytitle: String, subtitle: String, desc:String , back:Color, textColor:Color) {
        
        self.Mytitle = Mytitle
        self.subtitle = subtitle
        self.desc = desc
        self.back = back
        self.textColor = textColor
    }
    
    var body: some View {
        VStack(spacing: 15) {
            
            Text(Mytitle)
                .font(.largeTitle)
            
            Text(subtitle)
                .font(.title)
                .foregroundColor(.gray)
            
            Text(desc)
                .foregroundStyle(textColor)
                .frame(maxWidth: .infinity)
                .font(.title)
                .padding()
                .background(back)
            
        }
    }
}
