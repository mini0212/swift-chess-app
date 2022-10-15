//
//  Board.swift
//  ChessApp
//
//  Created by seongmin.kim on 2022/09/28.
//

import Foundation

final class Board {
    private var board: [[Piece?]] = []
    var turn: PieceColor = .black
    
    init() {
        board = [[Piece?]](repeating: [Piece?](repeating: nil, count: 8), count: 8)
    }
    
    func startGame() {
        initBoard(with: BlackPawn())
        initBoard(with: WhitePawn())
        initBoard(with: BlackBishop())
        initBoard(with: WhiteBishop())
        initBoard(with: BlackRook())
        initBoard(with: WhiteRook())
        initBoard(with: BlackKnight())
        initBoard(with: WhiteKnight())
        initBoard(with: BlackQueen())
        initBoard(with: WhiteQueen())
        initBoard(with: BlackKing())
        initBoard(with: WhiteKing())
    }
    
    func checkEnableToMove(from: Position, to: Position) throws -> Bool {
        guard let fromPiece = typeOfPiece(at: from) else { throw PieceError.noPieceInFromPosition }
        guard fromPiece.color == turn else { throw PieceError.notPlayerTurn }
        guard fromPiece.validToMove().contains(to) else { throw PieceError.cannotMoveToPostion }
        return true
    }
    
    func move(from: Position, to: Position) throws {
        guard let fromPiece = typeOfPiece(at: from) else { throw PieceError.noPieceInFromPosition }
        if let toPiece = typeOfPiece(at: to) {
            if fromPiece.color == toPiece.color {
                throw PieceError.samePieceInToPosition
            }
        } else {
            removePiece(from: from)
        }
        let index = convertToIndex(position: to)
        board[index.row][index.column] = fromPiece
        changeTurn()
    }
    
    private func changeTurn() {
        turn = (turn == .black) ? .white : .black
    }
}

extension Board {
    func convertToIndex(position: Position) -> (row: Int, column: Int) {
        return (row: position.rank.rawValue, column: position.file.rawValue)
    }
    
    private func typeOfPiece(at position: Position) -> Piece? {
        let index = convertToIndex(position: position)
        return board[index.row][index.column]
    }
    
    private func removePiece(from position: Position) {
        let index = convertToIndex(position: position)
        board[index.row][index.column] = nil
    }
}

extension Board {
    func initBoard(with piece: Piece) {
        piece.startPosition().forEach {
            initPiece(piece: piece, at: $0)
        }
    }
    
    func initPiece(piece: Piece, at poistion: Position) {
        var piece = piece
        if enableToStart(piece: piece, at: poistion) {
            piece.current = poistion
        }
    }
    
    func enableToStart(piece: Piece, at position: Position) -> Bool {
        guard piece.startPosition().contains(position) else { return false }
        let index = convertToIndex(position: position)
        board[index.row][index.column] = piece
        return true
    }
}

extension Board {
    func display() -> String {
        var display: String = ""
        display += Position.File.allCases.map {"\($0)"}.reduce(" ", { $0 + $1 })
        display += "\n"
        board
            .enumerated()
            .forEach { index, files in
                let ranks = files.map({ item -> String in
                    return item?.display ?? "."
                }).reduce("", { $0 + $1 })
                display += "\(index + 1)"
                display += ranks
                display += "\n"
            }
        display += Position.File.allCases.map {"\($0)"}.reduce(" ", { $0 + $1 })
        return display
    }
    
    func score() -> (black: Int, white: Int) {
        let avalilablePiece = board
            .compactMap({ $0.compactMap({ $0 }) })
            .flatMap({ $0 })
        
        let blackScore = avalilablePiece
            .filter({ $0.color == .black })
            .map { $0.score }
            .reduce(0, +)
        
        let whiteScore = avalilablePiece
            .filter({ $0.color == .white })
            .map { $0.score }
            .reduce(0, +)

        return (blackScore, whiteScore)
    }
}
