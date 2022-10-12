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
    var current: Position?
    
    init() { }
    
    func startPosition() -> [Position] {
        [Position(file: .E, rank: .one)]
    }
    
    func validToMove() -> [Position] {
        guard let current = current else { return [] }
        var positions: [Position] = []
        return positions
    }
}

final class WhiteQueen: Piece, Queen {
    let color: PieceColor = .white
    let display: String = "♕"
    var current: Position?
    
    init() { }
    
    func startPosition() -> [Position] {
        [Position(file: .E, rank: .eight)]
    }
    
    func validToMove() -> [Position] {
        guard let current = current else { return [] }
        var positions: [Position] = []
        return positions
    }
}
