//
//  King.swift
//  ChessApp
//
//  Created by seongmin.kim on 2022/10/10.
//

import Foundation

protocol King {
    var score: Int { get }
}

extension King {
    var score: Int { 3 }
}


final class BlackKing: Piece, King {
    let color: PieceColor = .black
    let display: String  = "♚"
    
    init() { }
    
    func startPosition() -> [Position] {
        [Position(file: .D, rank: .one)]
    }
    
    func validToMovePosition(current: Position, to: Position) -> Bool {
        true
    }
}

final class WhiteKing: Piece, King {
    let color: PieceColor = .white
    let display: String = "♔"
    
    init() { }
    
    func startPosition() -> [Position] {
        [Position(file: .D, rank: .eight)]
    }
    
    func validToMovePosition(current: Position, to: Position) -> Bool {
        true
    }
}
