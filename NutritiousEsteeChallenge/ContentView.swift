//
//  ContentView.swift
//  NutritiousEsteeChallenge
//
//  Created by Josephine Aurelia Isjwara on 5/7/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    
    @State var width = UIScreen.main.bounds.width
    
    var body: some View {
        
        ZStack(alignment: .top){
            
            VStack{
                
                // You can delete this whole Hstack too
                HStack{
                    
                    Button(action: {
                        
                        
                    }) {
                        
                        HStack(spacing: 10){
                            
                            Image("back")
                                .renderingMode(.original)
                            
                            Text("Back")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.black)
                        }
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        
                        Image("bag")
                            .renderingMode(.original)
                    }
                    
                }
                .padding()
                
                // Delete this if not needed (this is arrows)
                HStack {
                    
                    Button(action: {
                        
                    }) {
                        
                        Image("left")
                            .renderingMode(.original)
                    }
                    
                    Image("ban")
                    
                    Button(action: {
                        
                    }) {
                        
                        Image("right")
                            .renderingMode(.original)
                    }
                    
                }
                .padding(.top, 30)
                
                // Until here
                
                Spacer()
            }
            .zIndex(1)
            
            // Top Curve
            
            Circle()
                .fill(Color(#F0C1CC))
                .frame(width: self.width + 200, height: self.width + 200)
                .padding(.horizontal, -100)
                .offset(y: -self.width)
            
        }
    }
}
