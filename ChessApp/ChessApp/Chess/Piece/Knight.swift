//
//  Knight.swift
//  ChessApp
//
//  Created by seongmin.kim on 2022/10/05.
//

import Foundation

protocol Knight {
    var score: Int { get }
}

extension Knight {
    var score: Int { 3 }
}


final class BlackKnight: Piece, Knight {
    let color: PieceColor = .black
    let display: String  = "♞"
    var current: Position?
    
    init() { }
    
    func startPosition() -> [Position] {
        [Position(file: .B, rank: .one),
         Position(file: .G, rank: .one)]
    }
    
    func validToMove() -> [Position] {
        guard let current = current else { return [] }
        var positions: [Position] = []
        return positions
    }
}

final class WhiteKnight: Piece, Knight {
    let color: PieceColor = .white
    let display: String = "♘"
    var current: Position?
    
    init() { }
    
    func startPosition() -> [Position] {
        [Position(file: .B, rank: .eight),
         Position(file: .G, rank: .eight)]
    }
    
    func validToMove() -> [Position] {
        guard let current = current else { return [] }
        var positions: [Position] = []
        return positions
    }
}
