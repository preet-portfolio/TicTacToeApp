//
//  GameSquiareView.swift
//  TicTacToeApp
//
//  Created by Preet Panchal on 2022-01-01.
//

import SwiftUI

struct GameSquareView: View {
    var proxy: GeometryProxy
    
    var body: some View {
        Circle()
            .foregroundColor(.blue.opacity(0.7))
            .frame(width: proxy.size.width / 3 - 15, height: proxy.size.width / 3 - 15)
    }
}

    //struct GameSquiareView_Previews: PreviewProvider {
    //  static var previews: some View {
    //    GameSquiareView()
    //}
    //}
