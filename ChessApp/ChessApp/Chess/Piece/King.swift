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
    var current: Position?
    
    init() { }
    
    func startPosition() -> [Position] {
        [Position(file: .D, rank: .one)]
    }
    
    func validToMove() -> [Position] {
        guard let current = current else { return [] }
        var positions: [Position] = []
        return positions
    }
}

final class WhiteKing: Piece, King {
    let color: PieceColor = .white
    let display: String = "♔"
    var current: Position?
    
    init() { }
    
    func startPosition() -> [Position] {
        [Position(file: .D, rank: .eight)]
    }
    
    func validToMove() -> [Position] {
        guard let current = current else { return [] }
        var positions: [Position] = []
        return positions
    }
}
