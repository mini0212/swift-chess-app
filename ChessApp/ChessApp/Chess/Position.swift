//
//  Position.swift
//  ChessApp
//
//  Created by seongmin.kim on 2022/09/28.
//

import Foundation

struct Position: Hashable {
    let file: File
    let rank: Rank
    
    init(file: File, rank: Rank) {
        self.rank = rank
        self.file = file
    }
}

extension Position {
    enum File: Int, Strideable, CaseIterable {
        typealias Stride = Int
        
        case A = 0
        case B,C,D,E,F,G,H
        func distance(to other: Position.File) -> Int {
            Stride(other.rawValue) - Stride(self.rawValue)
        }
        
        func advanced(by n: Int) -> Position.File {
            return File(rawValue: numericCast(Stride(self.rawValue) + n))!
        }
    }
}

extension Position {
    enum Rank: Int, Strideable, CaseIterable {
        typealias Stride = Int
        
        case one = 0
        case two, three, four, five, six, seven, eight
        
        func distance(to other: Position.Rank) -> Int {
            Stride(other.rawValue) - Stride(self.rawValue)
        }
        
        func advanced(by n: Int) -> Position.Rank {
            return Rank(rawValue: numericCast(Stride(self.rawValue) + n))!
        }
    }
}
