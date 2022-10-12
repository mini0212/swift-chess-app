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
        let top = Int(current.rank.distance(to: .one).magnitude)
        let bottom = Int(current.rank.distance(to: .eight).magnitude)
        let left = Int(current.file.distance(to: .A).magnitude)
        let right = Int(current.file.distance(to: .H).magnitude)
        
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
        
        return positions
    }
}
