//
//  Pawn.swift
//  ChessApp
//
//  Created by seongmin.kim on 2022/09/28.
//

import Foundation

protocol Pawn {
    var score: Int { get }
}

extension Pawn {
    var score: Int { 1 }
}

final class BlackPawn: Piece, Pawn {
    let color: PieceColor = .black
    let display: String  = "♟"
    var current: Position?
    
    init() { }
    
    func startPosition() -> [Position] {
        [Position(file: .A, rank: .two),
         Position(file: .B, rank: .two),
         Position(file: .C, rank: .two),
         Position(file: .D, rank: .two),
         Position(file: .E, rank: .two),
         Position(file: .F, rank: .two),
         Position(file: .G, rank: .two),
         Position(file: .H, rank: .two)]
    }
    
    func validToMove() -> [Position] {
        guard let current = current else { return [] }
        var positions: [Position] = []
        return positions
    }
}

final class WhitePawn: Piece, Pawn {
    let color: PieceColor = .white
    let display: String = "♙" 
    var current: Position?
    
    init() { }
    
    func startPosition() -> [Position] {
        [Position(file: .A, rank: .seven),
         Position(file: .B, rank: .seven),
         Position(file: .C, rank: .seven),
         Position(file: .D, rank: .seven),
         Position(file: .E, rank: .seven),
         Position(file: .F, rank: .seven),
         Position(file: .G, rank: .seven),
         Position(file: .H, rank: .seven)]
    }
    
    func validToMove() -> [Position] {
        guard let current = current else { return [] }
        var positions: [Position] = []
        return positions
    }
}
