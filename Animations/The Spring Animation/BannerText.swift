//
//  BannerText.swift
//  Animations
//
//  Created by HubertMac on 02/09/2023.
//

import SwiftUI

struct BannerText: View {
    
    var bannerText: String = "baner text"
    var backColor: Color = Color.blue
    
    init(_ bannerText: String, backColor: Color) {
        self.bannerText = bannerText
        self.backColor = backColor
    }
    
    var body: some View {
        Text(bannerText)
            .frame(maxWidth: .infinity)
            .padding()
            .background(backColor)
    }
}

struct BannerText_Previews: PreviewProvider {
    static var previews: some View {
        let bannerText = "banner Text"
        let backColor = Color.blue
        BannerText(bannerText, backColor: backColor)
    }
}
