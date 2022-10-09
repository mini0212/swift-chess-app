//
//  Rook.swift
//  ChessApp
//
//  Created by seongmin.kim on 2022/10/03.
//

import Foundation

protocol Rook {
    var score: Int { get }
}

extension Rook {
    var score: Int { 5 }
}

final class BlackRook: Piece, Rook {
    let color: PieceColor = .black
    let display: String  = "♜"
    
    init() { }
    
    func startPosition() -> [Position] {
        [Position(file: .A, rank: .one),
         Position(file: .H, rank: .one)]
    }
    
    func validToMovePosition(current: Position, to: Position) -> Bool {
        true
    }
}

final class WhiteRook: Piece, Rook {
    let color: PieceColor = .white
    let display: String = "♖"
    
    init() { }
    
    func startPosition() -> [Position] {
        [Position(file: .A, rank: .eight),
         Position(file: .H, rank: .eight)]
    }
    
    func validToMovePosition(current: Position, to: Position) -> Bool {
        true
    }
}
