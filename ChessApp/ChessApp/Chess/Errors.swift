//
//  Errors.swift
//  ChessApp
//
//  Created by seongmin.kim on 2022/10/13.
//

import Foundation

enum PieceError: Error {
    case noPieceInFromPosition
    case notPlayerTurn
    case cannotMoveToPostion
    case samePieceInToPosition
}
