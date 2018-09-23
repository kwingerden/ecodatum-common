import Foundation

extension String {
  
  func base64Encode() -> String? {
    return data(using: .utf8)?.base64EncodedString()
  }
  
  func base64Decode() -> Data? {
    return Data(base64Encoded: self, options: .ignoreUnknownCharacters)
  }
  
}
