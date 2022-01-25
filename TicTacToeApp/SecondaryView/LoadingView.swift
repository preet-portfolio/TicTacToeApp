//
//  LoadingView.swift
//  TicTacToeApp
//
//  Created by Preet Panchal on 2022-01-24.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
   
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle())
                .scaleEffect(2)
        }
        
    }
}
