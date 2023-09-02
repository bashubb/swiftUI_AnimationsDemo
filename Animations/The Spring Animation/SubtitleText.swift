//
//  SubtitleText.swift
//  Animations
//
//  Created by HubertMac on 02/09/2023.
//

import SwiftUI

struct SubtitleText: View {
    
    var subtitle = "subtitle"
    
    init (_ subtitle: String) {
        self.subtitle = subtitle
    }
    
    var body: some View {
        Text(subtitle)
            .foregroundStyle(Color.gray)
    }
}

struct SubtitleText_Previews: PreviewProvider {
    static var previews: some View {
        let subtitle = "subtitle"
        SubtitleText(subtitle)
    }
}
