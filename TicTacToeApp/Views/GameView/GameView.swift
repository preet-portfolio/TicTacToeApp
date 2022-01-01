//
//  GameView.swift
//  TicTacToeApp
//
//  Created by Preet Panchal on 2021-12-27.
//

import SwiftUI

struct GameView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        
        GeometryReader { geometry in
        VStack{
            
            Text("Waiting for the player")
            
            Button{
                print("Quit the game")
            } label: {
                GameButton(title: "Quit", backgroundColor: Color(.systemPurple))
                
            }
                
                Text("Loading View")
                
                Spacer()
            
            VStack {
                LazyVGrid(columns: columns, spacing: 5) {
                    ForEach(0..<9) { i in
                        
                        ZStack {
                           GameSquiareView(proxy: geometry)
                            PlayerindicatorView(systemImageName: "xmark")
                    }
                        .onTapGesture {
                            print("tap on spot", i)
                        }
                }
            }
        }
            
    }
 }
        
}
struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
}
