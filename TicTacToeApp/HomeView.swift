//
//  ContentView.swift
//  TicTacToeApp
//
//  Created by Preet Panchal on 2021-12-27.
//

import SwiftUI

struct HomeView: View {
    
    
    @State var isGameViewPresented = false
    
    var body: some View {

        VStack {
            Button {
                isGameViewPresented.toggle()
                  } label: {
                Text("Play")
                    .font(.title)
                    .fontWeight(.semibold)
                    .frame(width: 300, height: 50)
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(50)

                    
                }
            }
        .fullScreenCover(isPresented: $isGameViewPresented) {
            GameView()
            
        }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
