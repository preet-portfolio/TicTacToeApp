//
//  GameView.swift
//  TicTacToeApp
//
//  Created by Preet Panchal on 2021-12-27.
//

import SwiftUI

struct GameView: View {
    
    @ObservedObject var viewModel: GameViewModel
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    
    var body: some View {
        
        GeometryReader { geometry in
            
        VStack{
            
            Text("Waiting for the player")
            
            Button{
                mode.wrappedValue.dismiss()
            } label: {
                GameButton(title: "Quit", backgroundColor: Color(.systemPurple))
                
            }
                
                
            LoadingView()
            
            Spacer()
            
            VStack {
                LazyVGrid(columns: viewModel.columns, spacing: 5) {
                    ForEach(0..<9) { i in
                        
                        ZStack {
                           GameSquareView(proxy: geometry)
                            PlayerindicatorView(systemImageName: "applelogo")
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
        GameView(viewModel: GameViewModel())
    }
}
}
