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
        let bottom = Int(current.rank.distance(to: .eight).magnitude)
        let top = Int(current.rank.distance(to: .one).magnitude)
        let left = Int(current.file.distance(to: .A).magnitude)
        let right = Int(current.file.distance(to: .H).magnitude)
        
        if bottom > 0 && left > 0 {
            for index in 1...min(bottom, left) {
                let rankIndex = current.rank.advanced(by: index)
                let fileIndex = current.file.advanced(by: -index)
                positions.append(Position(file: fileIndex, rank: rankIndex))
            }
        }
        
        if bottom > 0 && right > 0 {
            for index in 1...min(bottom, right) {
                let rankIndex = current.rank.advanced(by: index)
                let fileIndex = current.file.advanced(by: index)
                positions.append(Position(file: fileIndex, rank: rankIndex))
            }
        }
        
        if top > 0 && left > 0 {
            for index in 1...min(top, left) {
                let rankIndex = current.rank.advanced(by: -index)
                let fileIndex = current.file.advanced(by: -index)
                positions.append(Position(file: fileIndex, rank: rankIndex))
            }
        }
        
        if top > 0 && right > 0 {
            for index in 1...min(top, right) {
                let rankIndex = current.rank.advanced(by: -index)
                let fileIndex = current.file.advanced(by: index)
                positions.append(Position(file: fileIndex, rank: rankIndex))
            }
        }
        
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
        let top = Int(current.rank.distance(to: .one).magnitude)
        let bottom = Int(current.rank.distance(to: .eight).magnitude)
        let left = Int(current.file.distance(to: .A).magnitude)
        let right = Int(current.file.distance(to: .H).magnitude)
        
        if bottom > 0 && left > 0 {
            for index in 1...min(bottom, left) {
                let rankIndex = current.rank.advanced(by: index)
                let fileIndex = current.file.advanced(by: -index)
                positions.append(Position(file: fileIndex, rank: rankIndex))
            }
        }
        
        if bottom > 0 && right > 0 {
            for index in 1...min(bottom, right) {
                let rankIndex = current.rank.advanced(by: index)
                let fileIndex = current.file.advanced(by: index)
                positions.append(Position(file: fileIndex, rank: rankIndex))
            }
        }
        
        if top > 0 && left > 0 {
            for index in 1...min(top, left) {
                let rankIndex = current.rank.advanced(by: -index)
                let fileIndex = current.file.advanced(by: -index)
                positions.append(Position(file: fileIndex, rank: rankIndex))
            }
        }
        
        if top > 0 && right > 0 {
            for index in 1...min(top, right) {
                let rankIndex = current.rank.advanced(by: -index)
                let fileIndex = current.file.advanced(by: index)
                positions.append(Position(file: fileIndex, rank: rankIndex))
            }
        }
        
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
