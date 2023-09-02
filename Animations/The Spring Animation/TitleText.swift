//
//  TitleText.swift
//  Animations
//
//  Created by HubertMac on 02/09/2023.
//

import SwiftUI

struct TitleText: View {
    var title = "title"
    
    init(_ title: String) {
        self.title = title
    }
    
    
    var body: some View {
        Text(title)
            
    }
}

struct TitleText_Previews: PreviewProvider {
    static var previews: some View {
        let title = "title"
        TitleText(title)
    }
}
