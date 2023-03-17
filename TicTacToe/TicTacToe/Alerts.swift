//
//  Alerts.swift
//  TicTacToe
//
//  Created by Nicholas Melekian on 1/24/23.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    var title: Text
    var message: Text
    var buttonTitle: Text
}

struct AlertContext {
    
    static let humanWin = AlertItem(title: Text("You Win!"), message: Text("You are so smart. You beat your own AI"), buttonTitle: Text("Hell Yeah"))
    
    static let ComputerWin = AlertItem(title: Text("You Lost!"), message: Text("You made a sentient AI"), buttonTitle: Text("Hell No"))
    
    static let draw = AlertItem(title: Text("Draw"), message: Text("You couldn't beat a robot"), buttonTitle: Text("Try Again"))
    
}

