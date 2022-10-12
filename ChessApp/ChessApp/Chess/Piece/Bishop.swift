//
//  Bishop.swift
//  ChessApp
//
//  Created by seongmin.kim on 2022/10/03.
//

import Foundation

protocol Bishop {
    var score: Int { get }
}

extension Bishop {
    var score: Int { 3 }
}

final class BlackBishop: Piece, Bishop {
    let color: PieceColor = .black
    let display: String  = "♝"
    var current: Position?
    
    init() { }
    
    func startPosition() -> [Position] {
        [Position(file: .C, rank: .one),
         Position(file: .F, rank: .one)]
    }
    
    func validToMove() -> [Position] {
        guard let current = current else { return [] }
        var positions: [Position] = []
        return positions
    }
}

final class WhiteBishop: Piece, Bishop {
    let color: PieceColor = .white
    let display: String = "♗"
    var current: Position?
    
    init() { }
    
    func startPosition() -> [Position] {
        [Position(file: .C, rank: .eight),
         Position(file: .F, rank: .eight)]
    }
    
    func validToMove() -> [Position] {
        guard let current = current else { return [] }
        var positions: [Position] = []
        return positions
    }
}
