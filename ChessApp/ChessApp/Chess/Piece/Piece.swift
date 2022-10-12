//
//  Piece.swift
//  ChessApp
//
//  Created by seongmin.kim on 2022/10/03.
//

import Foundation

protocol Piece {
    var color: PieceColor { get }
    var display: String { get }
    var score: Int { get }
    var current: Position? { get set }
    func startPosition() -> [Position]
    func validToMove() -> [Position]
}

enum PieceColor {
    case black
    case white
    
    var turn: String {
        switch self {
        case .black: return "흑색 체스말의 차례입니다."
        case .white: return "백색 체스말의 차례입니다."
        }
    }
}
