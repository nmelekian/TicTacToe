//
//  GameView.swift
//  TicTacToe
//
//  Created by Nicholas Melekian on 1/24/23.
//

import SwiftUI

struct GameView: View {
    
    @StateObject private var viewModel = GameViewModel()

    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                LazyVGrid(columns: viewModel.columns) {
                ForEach(0..<9) { i in
                    ZStack {
                        Rectangle()
                            .foregroundColor(.red)
                            .opacity(0.5)
                            .frame(width: geometry.size.width/3 - 15, height: geometry.size.width/3 - 15)
                        Image(systemName: viewModel.moves[i]?.indicator ?? "")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 40, height: 40)
                        }
                    .onTapGesture {
                        viewModel.processPlayerMove(for: i)
                    }
                    }
                }
                Spacer()
            }
            .disabled(viewModel.isGameBoardDisabled)
            .padding()
            .alert(item: $viewModel.alertItem, content: { alertItem in
                Alert(title: alertItem.title, message: alertItem.message, dismissButton: .default(alertItem.buttonTitle, action: { viewModel.resetGame() }))
            })
        }
    }
    
   
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
