//
//  Transitions_WithForEach.swift
//  Animations
//
//  Created by HubertMac on 12/09/2023.
//

import SwiftUI


//Model
struct Item: Identifiable {
    var id = UUID()
    var name = ""
}



// ViewModel
class MyViewModel: ObservableObject {
    @Published var items: [Item] = []
    
    func fetchItems() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1 ) {
            self.items = [Item(name:"Rod"),
                          Item(name:"Mark"),
                          Item(name:"Chase")]
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5 ) {
            self.items.insert(Item(name:"Lem"), at: 1)
            self.items.insert(Item(name:"Chris"), at: 3)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 2 ) {
            self.items.insert(Item(name:"Parker"), at: 1)
            self.items.append(Item(name:"Dave"))
        }
    }
}



// View
struct Transitions_WithForEach: View {
    
    @StateObject private var myModel = MyViewModel()
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack(spacing: 24){
                TitleText("Transitions")
                    .foregroundColor(.white)
                SubtitleText("With ForEach")
                BannerText("When rows are added, they are inserted into the view hierarchy. You can assign a transition and animation to use when this happens.", backColor: Color("BannerTextTransitions"))
                    .foregroundColor(.white)
                    
                ScrollView {
                    LazyVStack {
                        ForEach(myModel.items) { item in
                            CardView(item: item, animate: true)
                        }
                    }
                }
            }
            .font(.title)
        }
        .onAppear {
            myModel.fetchItems()
        }
    }
}



// SubView
struct CardView: View {
    
    var item: Item
    var animate = false
    
    var body: some View {
        Text(item.name)
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color("BannerTextTransitions"))
            .padding(.horizontal)
            .transition(.scale.animation(.spring(response: 0.5, dampingFraction: 0.55)))
        
        
    }
}
struct Transitions_WithForEach_Previews: PreviewProvider {
    
    static var previewItem = Item(name: "Josh")
    
    static var previews: some View {
        Group {
            Transitions_WithForEach()
                .previewLayout(.sizeThatFits)
            CardView(item: previewItem, animate: true)
                .previewLayout(.sizeThatFits)
        }
        
        
    }
}
