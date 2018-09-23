import Foundation
import XCTest
@testable import ecodatum_common

final class ecodatum_commonTests: XCTestCase {
  
  func testExample() throws {
    let fm = FileManager.default
    let jsonPath = fm.currentDirectoryPath + "/Tests/ecodatum-commonTests/Resources/test1.site.json"
    guard let jsonData = fm.contents(atPath: jsonPath) else {
      XCTFail("Failed to load test1.site.json")
      return
    }
    let decoder = JSONDecoder()
    let site = try decoder.decode(Site.self, from: jsonData)
    print(site.ecoFactors?.count ?? "none")
    /*
    guard let url = bundle.url(forResource: "test1.site", withExtension: "json") else {
      XCTFail("Missing file: test1.site.json")
      return
    }
 */
  }
  
  static var allTests = [
    ("testExample", testExample),
    ]
}
