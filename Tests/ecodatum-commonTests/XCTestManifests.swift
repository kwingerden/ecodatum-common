import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
  return [
    testCase(ecodatum_commonTests.allTests),
  ]
}
#endif
