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
        let top = Int(current.rank.distance(to: .one).magnitude)
        let bottom = Int(current.rank.distance(to: .eight).magnitude)
        let left = Int(current.file.distance(to: .A).magnitude)
        let right = Int(current.file.distance(to: .H).magnitude)
        
        if top > 1 && left > 0 {
            positions.append(Position(file: current.file.advanced(by: -1), rank: current.rank.advanced(by: -2)))
        }
        if top > 0 && left > 1 {
            positions.append(Position(file: current.file.advanced(by: -2), rank: current.rank.advanced(by: -1)))
        }
        if top > 1 && right > 0 {
            positions.append(Position(file: current.file.advanced(by: 1), rank: current.rank.advanced(by: -2)))
        }
        if top > 0 && right > 1 {
            positions.append(Position(file: current.file.advanced(by: 2), rank: current.rank.advanced(by: -1)))
        }
        if bottom > 1 && left > 0 {
            positions.append(Position(file: current.file.advanced(by: -1), rank: current.rank.advanced(by: 2)))
        }
        if bottom > 0 && left > 1 {
            positions.append(Position(file: current.file.advanced(by: -2), rank: current.rank.advanced(by: 1)))
        }
        if bottom > 1 && right > 0 {
            positions.append(Position(file: current.file.advanced(by: 1), rank: current.rank.advanced(by: 2)))
        }
        if bottom > 0 && right > 1 {
            positions.append(Position(file: current.file.advanced(by: 2), rank: current.rank.advanced(by: 1)))
        }

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
        let top = Int(current.rank.distance(to: .one).magnitude)
        let bottom = Int(current.rank.distance(to: .eight).magnitude)
        let left = Int(current.file.distance(to: .A).magnitude)
        let right = Int(current.file.distance(to: .H).magnitude)
        
        if top > 1 && left > 0 {
            positions.append(Position(file: current.file.advanced(by: -1), rank: current.rank.advanced(by: -2)))
        }
        if top > 0 && left > 1 {
            positions.append(Position(file: current.file.advanced(by: -2), rank: current.rank.advanced(by: -1)))
        }
        if top > 1 && right > 0 {
            positions.append(Position(file: current.file.advanced(by: 1), rank: current.rank.advanced(by: -2)))
        }
        if top > 0 && right > 1 {
            positions.append(Position(file: current.file.advanced(by: 2), rank: current.rank.advanced(by: -1)))
        }
        if bottom > 1 && left > 0 {
            positions.append(Position(file: current.file.advanced(by: -1), rank: current.rank.advanced(by: 2)))
        }
        if bottom > 0 && left > 1 {
            positions.append(Position(file: current.file.advanced(by: -2), rank: current.rank.advanced(by: 1)))
        }
        if bottom > 1 && right > 0 {
            positions.append(Position(file: current.file.advanced(by: 1), rank: current.rank.advanced(by: 2)))
        }
        if bottom > 0 && right > 1 {
            positions.append(Position(file: current.file.advanced(by: 2), rank: current.rank.advanced(by: 1)))
        }

        return positions
    }
}
