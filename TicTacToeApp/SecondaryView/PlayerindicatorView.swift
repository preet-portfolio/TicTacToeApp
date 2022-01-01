//
//  PlayerindicatorView.swift
//  TicTacToeApp
//
//  Created by Preet Panchal on 2022-01-01.
//

import SwiftUI

struct PlayerindicatorView: View {
    
    var systemImageName: String
    
    var body: some View {
        Image(systemName: systemImageName)
            .resizable()
            .frame(width: 40, height: 40)
            .foregroundColor(.white)
            .opacity(systemImageName == "applelogo" ? 0: 1)
            
    }
}

struct PlayerindicatorView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerindicatorView(systemImageName: "xmark")
    }
}
