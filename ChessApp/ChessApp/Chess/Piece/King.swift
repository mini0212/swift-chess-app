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
        let top = Int(current.rank.distance(to: .one).magnitude)
        let bottom = Int(current.rank.distance(to: .eight).magnitude)
        let left = Int(current.file.distance(to: .A).magnitude)
        let right = Int(current.file.distance(to: .H).magnitude)
        var positions: [Position] = []
        if top > 0 {
            positions.append(Position(file: current.file, rank: current.rank.advanced(by: -1)))
        }

        if bottom > 0 {
            positions.append(Position(file: current.file, rank: current.rank.advanced(by: 1)))
        }

        if left > 0 {
            positions.append(Position(file: current.file.advanced(by: -1), rank: current.rank))
        }

        if right > 0 {
            positions.append(Position(file: current.file.advanced(by: 1), rank: current.rank))
        }
        
        if top > 0 && left > 0 {
            let rankIndex = current.rank.advanced(by: -1)
            let fileIndex = current.file.advanced(by: -1)
            positions.append(Position(file: fileIndex, rank: rankIndex))
        }

        if top > 0 && right > 0 {
            let rankIndex = current.rank.advanced(by: -1)
            let fileIndex = current.file.advanced(by: 1)
            positions.append(Position(file: fileIndex, rank: rankIndex))
        }

        if bottom > 0 && left > 0 {
            let rankIndex = current.rank.advanced(by: 1)
            let fileIndex = current.file.advanced(by: -1)
            positions.append(Position(file: fileIndex, rank: rankIndex))
        }

        if bottom > 0 && right > 0 {
            let rankIndex = current.rank.advanced(by: 1)
            let fileIndex = current.file.advanced(by: 1)
            positions.append(Position(file: fileIndex, rank: rankIndex))
        }
        
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
        let top = Int(current.rank.distance(to: .one).magnitude)
        let bottom = Int(current.rank.distance(to: .eight).magnitude)
        let left = Int(current.file.distance(to: .A).magnitude)
        let right = Int(current.file.distance(to: .H).magnitude)
        var positions: [Position] = []
        if top > 0 {
            positions.append(Position(file: current.file, rank: current.rank.advanced(by: -1)))
        }

        if bottom > 0 {
            positions.append(Position(file: current.file, rank: current.rank.advanced(by: 1)))
        }

        if left > 0 {
            positions.append(Position(file: current.file.advanced(by: -1), rank: current.rank))
        }

        if right > 0 {
            positions.append(Position(file: current.file.advanced(by: 1), rank: current.rank))
        }
        
        if top > 0 && left > 0 {
            let rankIndex = current.rank.advanced(by: -1)
            let fileIndex = current.file.advanced(by: -1)
            positions.append(Position(file: fileIndex, rank: rankIndex))
        }

        if top > 0 && right > 0 {
            let rankIndex = current.rank.advanced(by: -1)
            let fileIndex = current.file.advanced(by: 1)
            positions.append(Position(file: fileIndex, rank: rankIndex))
        }

        if bottom > 0 && left > 0 {
            let rankIndex = current.rank.advanced(by: 1)
            let fileIndex = current.file.advanced(by: -1)
            positions.append(Position(file: fileIndex, rank: rankIndex))
        }

        if bottom > 0 && right > 0 {
            let rankIndex = current.rank.advanced(by: 1)
            let fileIndex = current.file.advanced(by: 1)
            positions.append(Position(file: fileIndex, rank: rankIndex))
        }
        
        return positions
    }
}
