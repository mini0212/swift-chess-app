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

final class BlackRookTest: XCTestCase {
    func test_rook_생성() throws {
        let piece = BlackRook()
        let pieceLocation = [Position(file: .A, rank: .one),
                             Position(file: .H, rank: .one)]
        XCTAssertEqual(piece.startPosition(), pieceLocation)
    }
    
    func test_rook_이동_성공() throws {
        let piece = BlackRook()
        piece.current = Position(file: .A, rank: .one)
        piece.current = Position(file: .A, rank: .two)
        XCTAssertNotEqual(piece.current, Position(file: .A, rank: .one))
        XCTAssertEqual(piece.current, Position(file: .A, rank: .two))
    }
    
    func test_rook_이동_가능_위치_성공() throws {
        let piece = BlackRook()
        piece.current = Position(file: .A, rank: .one)
        let movePosition = [Position(file: .A, rank: .two),
                            Position(file: .A, rank: .three),
                            Position(file: .A, rank: .four),
                            Position(file: .A, rank: .five),
                            Position(file: .A, rank: .six),
                            Position(file: .A, rank: .seven),
                            Position(file: .A, rank: .eight),
                            Position(file: .B, rank: .one),
                            Position(file: .C, rank: .one),
                            Position(file: .D, rank: .one),
                            Position(file: .E, rank: .one),
                            Position(file: .F, rank: .one),
                            Position(file: .G, rank: .one),
                            Position(file: .H, rank: .one)]
        XCTAssertEqual(piece.validToMove(), movePosition)
    }
    
    func test_rook_이동_가능_위치_실패() throws {
        let piece = BlackRook()
        piece.current = Position(file: .C, rank: .eight)
        let movePosition = [Position(file: .B, rank: .four)]
        XCTAssertNotEqual(piece.validToMove(), movePosition)
    }
}

final class WhiteRookTest: XCTestCase {
    func test_rook_생성() throws {
        let piece = WhiteRook()
        let pieceLocation = [Position(file: .A, rank: .eight),
                             Position(file: .H, rank: .eight)]
        XCTAssertEqual(piece.startPosition(), pieceLocation)
    }
    
    func test_rook_이동_성공() throws {
        let piece = WhiteRook()
        piece.current = Position(file: .A, rank: .eight)
        piece.current = Position(file: .A, rank: .seven)
        XCTAssertNotEqual(piece.current, Position(file: .A, rank: .eight))
        XCTAssertEqual(piece.current, Position(file: .A, rank: .seven))
    }
    
    func test_rook_이동_가능_위치_성공() throws {
        let piece = WhiteRook()
        piece.current = Position(file: .H, rank: .eight)
        let movePosition = [Position(file: .H, rank: .seven),
                            Position(file: .H, rank: .six),
                            Position(file: .H, rank: .five),
                            Position(file: .H, rank: .four),
                            Position(file: .H, rank: .three),
                            Position(file: .H, rank: .two),
                            Position(file: .H, rank: .one),
                            Position(file: .G, rank: .eight),
                            Position(file: .F, rank: .eight),
                            Position(file: .E, rank: .eight),
                            Position(file: .D, rank: .eight),
                            Position(file: .C, rank: .eight),
                            Position(file: .B, rank: .eight),
                            Position(file: .A, rank: .eight)]
        XCTAssertEqual(piece.validToMove(), movePosition)
    }
    
    func test_rook_이동_가능_위치_실패() throws {
        let piece = WhiteRook()
        piece.current = Position(file: .C, rank: .eight)
        let movePosition = [Position(file: .B, rank: .four)]
        XCTAssertNotEqual(piece.validToMove(), movePosition)
    }
}

final class BlackKnightTest: XCTestCase {
    func test_piece_생성() throws {
        let piece = BlackKnight()
        let pieceLocation = [Position(file: .B, rank: .one),
                             Position(file: .G, rank: .one)]
        XCTAssertEqual(piece.startPosition(), pieceLocation)
    }
    
    func test_piece_이동_성공() throws {
        let piece = BlackKnight()
        piece.current = Position(file: .B, rank: .one)
        piece.current = Position(file: .C, rank: .three)
        XCTAssertNotEqual(piece.current, Position(file: .B, rank: .one))
        XCTAssertEqual(piece.current, Position(file: .C, rank: .three))
    }
    
    func test_piece_이동_가능_위치_성공() throws {
        let piece = BlackKnight()
        piece.current = Position(file: .D, rank: .four)
        let movePosition = [Position(file: .C, rank: .two),
                            Position(file: .B, rank: .three),
                            Position(file: .E, rank: .two),
                            Position(file: .F, rank: .three),
                            Position(file: .C, rank: .six),
                            Position(file: .B, rank: .five),
                            Position(file: .E, rank: .six),
                            Position(file: .F, rank: .five)]
        XCTAssertEqual(piece.validToMove(), movePosition)
    }
    
    func test_piece_이동_가능_위치_성공2() throws {
        let piece = BlackKnight()
        piece.current = Position(file: .G, rank: .eight)
        let movePosition = [Position(file: .F, rank: .six),
                            Position(file: .E, rank: .seven),
                            Position(file: .H, rank: .six)]
        XCTAssertEqual(piece.validToMove(), movePosition)
    }
    
    func test_piece_이동_가능_위치_실패() throws {
        let piece = BlackKnight()
        piece.current = Position(file: .C, rank: .eight)
        let movePosition = [Position(file: .B, rank: .four)]
        XCTAssertNotEqual(piece.validToMove(), movePosition)
    }
}

final class BlackQueenTest: XCTestCase {
    func test_piece_생성() throws {
        let piece = BlackQueen()
        let pieceLocation = [Position(file: .E, rank: .one)]
        XCTAssertEqual(piece.startPosition(), pieceLocation)
    }
    
    func test_piece_이동_성공() throws {
        let piece = BlackQueen()
        piece.current = Position(file: .E, rank: .one)
        piece.current = Position(file: .E, rank: .three)
        XCTAssertNotEqual(piece.current, Position(file: .B, rank: .one))
        XCTAssertEqual(piece.current, Position(file: .E, rank: .three))
    }
    
    func test_piece_이동_가능_위치_성공() throws {
        let piece = BlackQueen()
        piece.current = Position(file: .B, rank: .one)
        let movePosition = [Position(file: .A, rank: .two),
                            Position(file: .C, rank: .two),
                            Position(file: .D, rank: .three),
                            Position(file: .E, rank: .four),
                            Position(file: .F, rank: .five),
                            Position(file: .G, rank: .six),
                            Position(file: .H, rank: .seven),
                            Position(file: .B, rank: .two),
                            Position(file: .B, rank: .three),
                            Position(file: .B, rank: .four),
                            Position(file: .B, rank: .five),
                            Position(file: .B, rank: .six),
                            Position(file: .B, rank: .seven),
                            Position(file: .B, rank: .eight),
                            Position(file: .A, rank: .one),
                            Position(file: .C, rank: .one),
                            Position(file: .D, rank: .one),
                            Position(file: .E, rank: .one),
                            Position(file: .F, rank: .one),
                            Position(file: .G, rank: .one),
                            Position(file: .H, rank: .one)]
        XCTAssertEqual(piece.validToMove(), movePosition)
    }
    
    func test_piece_이동_가능_위치_실패() throws {
        let piece = BlackQueen()
        piece.current = Position(file: .C, rank: .eight)
        let movePosition = [Position(file: .B, rank: .four)]
        XCTAssertNotEqual(piece.validToMove(), movePosition)
    }
}

final class WhiteQueenTest: XCTestCase {
    func test_piece_생성() throws {
        let piece = WhiteQueen()
        let pieceLocation =  [Position(file: .E, rank: .eight)]
        XCTAssertEqual(piece.startPosition(), pieceLocation)
    }
    
    func test_piece_이동_성공() throws {
        let piece = WhiteQueen()
        piece.current = Position(file: .E, rank: .eight)
        piece.current = Position(file: .E, rank: .three)
        XCTAssertNotEqual(piece.current, Position(file: .B, rank: .eight))
        XCTAssertEqual(piece.current, Position(file: .E, rank: .three))
    }
    
    func test_piece_이동_가능_위치_성공() throws {
        let piece = WhiteQueen()
        piece.current = Position(file: .E, rank: .eight)
        let movePosition = [Position(file: .D, rank: .seven),
                            Position(file: .C, rank: .six),
                            Position(file: .B, rank: .five),
                            Position(file: .A, rank: .four),
                            Position(file: .F, rank: .seven),
                            Position(file: .G, rank: .six),
                            Position(file: .H, rank: .five),
                            Position(file: .E, rank: .seven),
                            Position(file: .E, rank: .six),
                            Position(file: .E, rank: .five),
                            Position(file: .E, rank: .four),
                            Position(file: .E, rank: .three),
                            Position(file: .E, rank: .two),
                            Position(file: .E, rank: .one),
                            Position(file: .D, rank: .eight),
                            Position(file: .C, rank: .eight),
                            Position(file: .B, rank: .eight),
                            Position(file: .A, rank: .eight),
                            Position(file: .F, rank: .eight),
                            Position(file: .G, rank: .eight),
                            Position(file: .H, rank: .eight)]
        XCTAssertEqual(piece.validToMove(), movePosition)
    }
    
    func test_piece_이동_가능_위치_실패() throws {
        let piece = WhiteQueen()
        piece.current = Position(file: .C, rank: .eight)
        let movePosition = [Position(file: .B, rank: .four)]
        XCTAssertNotEqual(piece.validToMove(), movePosition)
    }
}

final class BlackKingTest: XCTestCase {
    func test_piece_생성() throws {
        let piece = BlackKing()
        let pieceLocation = [Position(file: .D, rank: .one)]
        XCTAssertEqual(piece.startPosition(), pieceLocation)
    }
    
    func test_piece_이동_성공() throws {
        let piece = BlackKing()
        piece.current = Position(file: .D, rank: .one)
        piece.current = Position(file: .E, rank: .one)
        XCTAssertNotEqual(piece.current, Position(file: .D, rank: .one))
        XCTAssertEqual(piece.current, Position(file: .E, rank: .one))
    }
    
    func test_piece_이동_가능_위치_성공() throws {
        let piece = BlackKing()
        piece.current = Position(file: .D, rank: .one)
        let movePosition = [Position(file: .D, rank: .two),
                            Position(file: .C, rank: .one),
                            Position(file: .E, rank: .one),
                            Position(file: .C, rank: .two),
                            Position(file: .E, rank: .two)]
        XCTAssertEqual(piece.validToMove(), movePosition)
    }
    
    func test_piece_이동_가능_위치_실패() throws {
        let piece = BlackKing()
        piece.current = Position(file: .C, rank: .eight)
        let movePosition = [Position(file: .B, rank: .four)]
        XCTAssertNotEqual(piece.validToMove(), movePosition)
    }
}

final class WhiteKingTest: XCTestCase {
    func test_piece_생성() throws {
        let piece = WhiteKing()
        let pieceLocation = [Position(file: .D, rank: .eight)]
        XCTAssertEqual(piece.startPosition(), pieceLocation)
    }
    
    func test_piece_이동_성공() throws {
        let piece = WhiteKing()
        piece.current = Position(file: .D, rank: .eight)
        piece.current = Position(file: .E, rank: .eight)
        XCTAssertNotEqual(piece.current, Position(file: .D, rank: .eight))
        XCTAssertEqual(piece.current, Position(file: .E, rank: .eight))
    }
    
    func test_piece_이동_가능_위치_성공() throws {
        let piece = WhiteKing()
        piece.current = Position(file: .D, rank: .four)
        let movePosition = [Position(file: .D, rank: .three),
                            Position(file: .D, rank: .five),
                            Position(file: .C, rank: .four),
                            Position(file: .E, rank: .four),
                            Position(file: .C, rank: .three),
                            Position(file: .E, rank: .three),
                            Position(file: .C, rank: .five),
                            Position(file: .E, rank: .five)]
        XCTAssertEqual(piece.validToMove(), movePosition)
    }
    
    func test_piece_이동_가능_위치_실패() throws {
        let piece = WhiteKing()
        piece.current = Position(file: .C, rank: .eight)
        let movePosition = [Position(file: .B, rank: .four)]
        XCTAssertNotEqual(piece.validToMove(), movePosition)
    }
}
