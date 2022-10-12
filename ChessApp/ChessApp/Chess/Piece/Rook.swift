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
    var current: Position?
    
    init() { }
    
    func startPosition() -> [Position] {
        [Position(file: .A, rank: .one),
         Position(file: .H, rank: .one)]
    }
    
    func validToMove() -> [Position] {
        guard let current = current else { return [] }
        var positions: [Position] = []
        let bottom = Int(current.rank.distance(to: .eight).magnitude)
        let top = Int(current.rank.distance(to: .one).magnitude)
        let left = Int(current.file.distance(to: .A).magnitude)
        let right = Int(current.file.distance(to: .H).magnitude)
        
        if bottom > 0 {
            for index in 1...bottom {
                positions.append(Position(file: current.file, rank: current.rank.advanced(by: index)))
            }
        }
        
        if top > 0 {
            for index in 1...top {
                positions.append(Position(file: current.file, rank: current.rank.advanced(by: -index)))
            }
        }
        
        if left > 0 {
            for index in 1...left {
                positions.append(Position(file: current.file.advanced(by: -index), rank: current.rank))
            }
        }
        
        if right > 0 {
            for index in 1...right {
                positions.append(Position(file: current.file.advanced(by: index), rank: current.rank))
            }
        }
        
        return positions
    }
}

final class WhiteRook: Piece, Rook {
    let color: PieceColor = .white
    let display: String = "♖"
    var current: Position?
    
    init() { }
    
    func startPosition() -> [Position] {
        [Position(file: .A, rank: .eight),
         Position(file: .H, rank: .eight)]
    }
    
    func validToMove() -> [Position] {
        guard let current = current else { return [] }
        var positions: [Position] = []
        let bottom = Int(current.rank.distance(to: .eight).magnitude)
        let top = Int(current.rank.distance(to: .one).magnitude)
        let left = Int(current.file.distance(to: .A).magnitude)
        let right = Int(current.file.distance(to: .H).magnitude)
        
        if bottom > 0 {
            for index in 1...bottom {
                positions.append(Position(file: current.file, rank: current.rank.advanced(by: index)))
            }
        }
        
        if top > 0 {
            for index in 1...top {
                positions.append(Position(file: current.file, rank: current.rank.advanced(by: -index)))
            }
        }
        
        if left > 0 {
            for index in 1...left {
                positions.append(Position(file: current.file.advanced(by: -index), rank: current.rank))
            }
        }
        
        if right > 0 {
            for index in 1...right {
                positions.append(Position(file: current.file.advanced(by: index), rank: current.rank))
            }
        }
        
        return positions
    }
}
