//
//  PieceTest.swift
//  ChessAppTests
//
//  Created by seongmin.kim on 2022/10/03.
//

import XCTest
@testable import ChessApp

final class BlackPawnTest: XCTestCase {
    func test_pawn_생성() throws {
        let pawn = BlackPawn()
        let pawnLocation = [Position(file: .A, rank: .two),
                            Position(file: .B, rank: .two),
                            Position(file: .C, rank: .two),
                            Position(file: .D, rank: .two),
                            Position(file: .E, rank: .two),
                            Position(file: .F, rank: .two),
                            Position(file: .G, rank: .two),
                            Position(file: .H, rank: .two)]
        XCTAssertEqual(pawn.startPosition(), pawnLocation)
    }
    
    func test_pawn_이동_성공() throws {
        let pawn = BlackPawn()
        pawn.current = Position(file: .B, rank: .two)
        pawn.current = Position(file: .B, rank: .three)
        XCTAssertNotEqual(pawn.current, Position(file: .B, rank: .two))
        XCTAssertEqual(pawn.current, Position(file: .B, rank: .three))
    }
    
    func test_pawn_이동_가능_위치_성공() throws {
        let pawn = BlackPawn()
        pawn.current = Position(file: .B, rank: .two)
        let movePosition = [Position(file: .B, rank: .three)]
        XCTAssertEqual(pawn.validToMove(), movePosition)
    }
    
    func test_pawn_이동_가능_위치_실패() throws {
        let pawn = BlackPawn()
        pawn.current = Position(file: .B, rank: .two)
        let movePosition = [Position(file: .B, rank: .four)]
        XCTAssertNotEqual(pawn.validToMove(), movePosition)
    }
}

final class WhitePawnTest: XCTestCase {
    func test_pawn_생성() throws {
        let pawn = WhitePawn()
        let pawnLocation = [Position(file: .A, rank: .seven),
                            Position(file: .B, rank: .seven),
                            Position(file: .C, rank: .seven),
                            Position(file: .D, rank: .seven),
                            Position(file: .E, rank: .seven),
                            Position(file: .F, rank: .seven),
                            Position(file: .G, rank: .seven),
                            Position(file: .H, rank: .seven)]
        XCTAssertEqual(pawn.startPosition(), pawnLocation)
    }
    
    func test_pawn_이동_성공() throws {
        let pawn = WhitePawn()
        pawn.current = Position(file: .B, rank: .seven)
        pawn.current = Position(file: .B, rank: .six)
        XCTAssertNotEqual(pawn.current, Position(file: .B, rank: .seven))
        XCTAssertEqual(pawn.current, Position(file: .B, rank: .six))
    }
    
    func test_pawn_이동_가능_위치_성공() throws {
        let pawn = WhitePawn()
        pawn.current = Position(file: .B, rank: .seven)
        let movePosition = [Position(file: .B, rank: .six)]
        XCTAssertEqual(pawn.validToMove(), movePosition)
    }
    
    func test_pawn_이동_가능_위치_실패() throws {
        let pawn = WhitePawn()
        pawn.current = Position(file: .B, rank: .seven)
        let movePosition = [Position(file: .B, rank: .five)]
        XCTAssertNotEqual(pawn.validToMove(), movePosition)
    }
}

final class BlackBishopTest: XCTestCase {
    func test_bishop_생성() throws {
        let piece = BlackBishop()
        let pieceLocation = [Position(file: .C, rank: .one),
                             Position(file: .F, rank: .one)]
        XCTAssertEqual(piece.startPosition(), pieceLocation)
    }
    
    func test_bishop_이동_성공() throws {
        let piece = BlackBishop()
        piece.current = Position(file: .C, rank: .one)
        piece.current = Position(file: .E, rank: .three)
        XCTAssertNotEqual(piece.current, Position(file: .C, rank: .one))
        XCTAssertEqual(piece.current, Position(file: .E, rank: .three))
    }
    
    func test_bishop_이동_가능_위치_성공() throws {
        let piece = BlackBishop()
        piece.current = Position(file: .C, rank: .one)
        let movePosition = [Position(file: .B, rank: .two),
                            Position(file: .A, rank: .three),
                            Position(file: .D, rank: .two),
                            Position(file: .E, rank: .three),
                            Position(file: .F, rank: .four),
                            Position(file: .G, rank: .five),
                            Position(file: .H, rank: .six)]
        XCTAssertEqual(piece.validToMove(), movePosition)
    }
    
    func test_bishop_이동_가능_위치_실패() throws {
        let piece = BlackBishop()
        piece.current = Position(file: .C, rank: .one)
        let movePosition = [Position(file: .B, rank: .four)]
        XCTAssertNotEqual(piece.validToMove(), movePosition)
    }
}

final class WhiteBishopTest: XCTestCase {
    func test_bishop_생성() throws {
        let piece = WhiteBishop()
        let pieceLocation = [Position(file: .C, rank: .eight),
                             Position(file: .F, rank: .eight)]
        XCTAssertEqual(piece.startPosition(), pieceLocation)
    }
    
    func test_bishop_이동_성공() throws {
        let piece = WhiteBishop()
        piece.current = Position(file: .C, rank: .eight)
        piece.current = Position(file: .E, rank: .five)
        XCTAssertNotEqual(piece.current, Position(file: .C, rank: .eight))
        XCTAssertEqual(piece.current, Position(file: .E, rank: .five))
    }
    
    func test_bishop_이동_가능_위치_성공() throws {
        let piece = WhiteBishop()
        piece.current = Position(file: .C, rank: .eight)
        let movePosition = [Position(file: .B, rank: .seven),
                            Position(file: .A, rank: .six),
                            Position(file: .D, rank: .seven),
                            Position(file: .E, rank: .six),
                            Position(file: .F, rank: .five),
                            Position(file: .G, rank: .four),
                            Position(file: .H, rank: .three)]
        XCTAssertEqual(piece.validToMove(), movePosition)
    }
    
    func test_bishop_이동_가능_위치_실패() throws {
        let piece = WhiteBishop()
        piece.current = Position(file: .C, rank: .eight)
        let movePosition = [Position(file: .B, rank: .four)]
        XCTAssertNotEqual(piece.validToMove(), movePosition)
    }
}

}
