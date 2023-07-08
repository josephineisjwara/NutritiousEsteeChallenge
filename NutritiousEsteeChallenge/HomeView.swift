//
//  ContentView.swift
//  NutritiousEsteeChallenge
//
//  Created by Josephine Aurelia Isjwara on 5/7/23.
//

import SwiftUI
import AVKit
import AVFoundation

// Color Set Manager
struct ColorManager {
    // Home
    static let homeBackground = Color("HomeBackground")
    
    // Product
    static let productPageHeader = Color("ProductPageHeader")
    
    static let productCircle = Color("ProductCircle")
    
    static let carouselBackground = Color("CarouselBackground")
    
    // Product Pop Over
    static let productBackground = Color("ProductBackground")
    
    // Article
    static let articleHeader = Color("ArticleHeader")
    
    static let articlePageBackground = Color("ArticlePageBackground")
    
    static let articleBox = Color("ArticleBox")
    
    // Article Pop Over
    static let articlePopBackground = Color("ArticlePopBackground")
}

struct HomeView: View {
    var body: some View {
        Home()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct Home : View {
    
    @State var width = UIScreen.main.bounds.width
    @State var player = AVPlayer(url: Bundle.main.url(forResource: "CampaignVideo", withExtension: "mp4")!)
    
    var body: some View {
        
        ZStack(alignment: .top){
            VideoPlayer(player: player)
                .clipShape(Circle())
                .frame(width: self.width + 200, height: self.width + 200)
                .padding(.horizontal, -100)
                .offset(y: -self.width - 100)
            
        }
    }
}
