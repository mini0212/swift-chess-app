//
//  ChessAppTests.swift
//  ChessAppTests
//
//  Created by seongmin.kim on 2022/09/27.
//

import XCTest
@testable import ChessApp

final class ChessAppTests: XCTestCase {
    
    let board = Board()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_pawn_생성_성공() throws {
        let blackPawnPosition = Position(file: .C, rank: .two)
        XCTAssertTrue(board.enableToStart(piece: BlackPawn(), at: blackPawnPosition))
    }
    
    func test_pawn_이동_성공() throws {
        let fromPostion = Position(file: .C, rank: .two)
        let toPosition = Position(file: .C, rank: .three)
        board.initPiece(piece: BlackPawn(), at: fromPostion)
        XCTAssertTrue(try board.checkEnableToMove(from: fromPostion, to: toPosition))
    }
    
    func test_pawn_이동_실패() throws {
        let fromPostion = Position(file: .C, rank: .two)
        let toPosition = Position(file: .B, rank: .three)
        board.initPiece(piece: BlackPawn(), at: fromPostion)
        XCTAssertThrowsError(try board.checkEnableToMove(from: fromPostion, to: toPosition))
    }
    
    func test_black_piece_점수() throws {
        board.initPiece(piece: BlackPawn(), at: Position(file: .C, rank: .two))
        board.initPiece(piece: BlackRook(), at: Position(file: .A, rank: .one))
        XCTAssertEqual(board.score().black, 6)
        XCTAssertEqual(board.score().white, 0)
    }
}
