//
//  Queen.swift
//  ChessApp
//
//  Created by seongmin.kim on 2022/10/05.
//

import Foundation

protocol Queen {
    var score: Int { get }
}

extension Queen {
    var score: Int { 9 }
}

final class BlackQueen: Piece, Queen {
    let color: PieceColor = .black
    let display: String  = "♛"
    
    init() { }
    
    func startPosition() -> [Position] {
        [Position(file: .E, rank: .one)]
    }
    
    func validToMovePosition(current: Position, to: Position) -> Bool {
        true
    }
}

final class WhiteQueen: Piece, Queen {
    let color: PieceColor = .white
    let display: String = "♕"
    
    init() { }
    
    func startPosition() -> [Position] {
        [Position(file: .E, rank: .eight)]
    }
    
    func validToMovePosition(current: Position, to: Position) -> Bool {
        true
    }
}
