//
//  ContentView.swift
//  TicTacToeApp
//
//  Created by Preet Panchal on 2021-12-27.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {

        VStack {
            Button {
                viewModel .isGameViewPresented = true
                  } label: {
                      GameButton(title: "Play", backgroundColor: Color(.systemGreen))
                    
                }
            }
        .fullScreenCover(isPresented: $viewModel.isGameViewPresented) {
            GameView()
            
        }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
