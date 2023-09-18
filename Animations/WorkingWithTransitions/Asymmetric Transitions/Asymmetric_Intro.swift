//
//  Asymmetric_Intro.swift
//  Animations
//
//  Created by HubertMac on 18/09/2023.
//

import SwiftUI
import MapKit

struct Asymmetric_Intro: View {
    @State private var showHelp = false
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack {
                TitleText("Transitions")
                    .foregroundColor(.white)
                SubtitleText("Aymmetric Introduction")
                BannerText("Provide a different transition for the insertion and removal of a view.", backColor: Color("BannerTextTransitions"))
                    .foregroundColor(.white)
                
                ZStack (alignment: .topTrailing) {
                    MapView()
                    Button {
                        showHelp = true
                    } label: {
                        Image(systemName: "questionmark.circle.fill")
                            .foregroundColor(.red)
                    }
                    .padding()
                }
                .ignoresSafeArea(edges: .vertical)
                
                
            }
            
            
            
            // if Help View
            if showHelp {
                VStack(spacing:20) {
                    Text("Help")
                        .foregroundColor(.white)
                    Image("driving")
                    Button("Close") {
                        showHelp = false
                    }
                    .padding(.top,30)
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 20)
                    .fill(Color("BannerTextTransitions")))
                .padding(.top, 100)
                .shadow(radius: 15)
                .transition(.asymmetric(insertion: .slide, removal: .move(edge: .bottom)))
                .zIndex(1)
            }
        }
        .font(.title)
        .animation(.spring(), value: showHelp)
    }
}

struct Asymmetric_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Asymmetric_Intro()
    }
}


struct MapView: UIViewRepresentable {
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 50.049683, longitude: 19.944544)
        let span = MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    
    func makeUIView(context: Context) -> MKMapView{
        MKMapView(frame: .zero)
    }
}
