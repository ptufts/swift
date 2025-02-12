import XCTest

@testable import Proverb

class ProverbTests: XCTestCase {
  let runAll = Bool(ProcessInfo.processInfo.environment["RUNALL", default: "false"]) ?? false

  func testZeroPieces() {
    let expected = ""
    XCTAssertEqual(Proverb([]).recite(), expected)
  }

  func testOnePiece() throws {
    try XCTSkipIf(true && !runAll)  // change true to false to run this test
    let expected = "And all for the want of a nail."
    XCTAssertEqual(Proverb(["nail"]).recite(), expected)
  }

  func testTwoPieces() throws {
    try XCTSkipIf(true && !runAll)  // change true to false to run this test
    let expected = "For want of a nail the shoe was lost.\nAnd all for the want of a nail."
    XCTAssertEqual(Proverb(["nail", "shoe"]).recite(), expected)
  }

  func testThreePieces() throws {
    try XCTSkipIf(true && !runAll)  // change true to false to run this test
    let expected =
      "For want of a nail the shoe was lost.\nFor want of a shoe the horse was lost.\nAnd all for the want of a nail."
    XCTAssertEqual(Proverb(["nail", "shoe", "horse"]).recite(), expected)
  }

  func testFullProverb() throws {
    try XCTSkipIf(true && !runAll)  // change true to false to run this test
    let expected =
      "For want of a nail the shoe was lost.\nFor want of a shoe the horse was lost.\nFor want of a horse the rider was lost.\nFor want of a rider the message was lost.\nFor want of a message the battle was lost.\nFor want of a battle the kingdom was lost.\nAnd all for the want of a nail."
    XCTAssertEqual(
      Proverb(["nail", "shoe", "horse", "rider", "message", "battle", "kingdom"]).recite(), expected
    )
  }

  func testFourPiecesModernized() throws {
    try XCTSkipIf(true && !runAll)  // change true to false to run this test
    let expected =
      "For want of a pin the gun was lost.\nFor want of a gun the soldier was lost.\nFor want of a soldier the battle was lost.\nAnd all for the want of a pin."
    XCTAssertEqual(Proverb(["pin", "gun", "soldier", "battle"]).recite(), expected)
  }
}
