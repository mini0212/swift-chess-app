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

    }
    
    }
    
    }

    }

}
