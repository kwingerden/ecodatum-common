//
//  BioticEcoData.swift
//  EcoDatumAmazon
//
//  Created by Kenneth Wingerden on 6/21/18.
//  Copyright © 2018 Kenneth Wingerden. All rights reserved.
//

import Foundation

struct BioticEcoData: Codable {
  
  let bioticFactor: BioticFactor?
  let image: Data?
  let notes: Data?
  
  init(bioticFactor: BioticFactor? = nil,
       image: Data? = nil,
       notes: Data? = nil) {
    self.bioticFactor = bioticFactor
    self.image = image
    self.notes = notes
  }
  
  enum CodingKeys: String, CodingKey {
    case bioticFactor
    case image
    case notes
  }
  
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    
    bioticFactor = try container.decodeIfPresent(BioticFactor.self, forKey: .bioticFactor)
    
    if let imageBase64Encoded = try container.decodeIfPresent(String.self, forKey: .image) {
      image = imageBase64Encoded.base64Decode()
    } else {
      image = nil
    }
    
    if let notesBase64Encoded = try container.decodeIfPresent(String.self, forKey: .notes) {
      notes = notesBase64Encoded.base64Decode()
    } else {
      notes = nil
    }
  }
  
  func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encodeIfPresent(bioticFactor, forKey: .bioticFactor)
    try container.encodeIfPresent(image?.base64EncodedString(), forKey: .image)
    try container.encodeIfPresent(notes?.base64EncodedString(), forKey: .notes)
  }
  
  func new(_ bioticFactor: BioticFactor?) -> BioticEcoData {
    return BioticEcoData(
      bioticFactor: bioticFactor,
      image: image,
      notes: notes)
  }
  
  func new(_ image: Data?) -> BioticEcoData {
    return BioticEcoData(
      bioticFactor: bioticFactor,
      image: image,
      notes: notes)
  }
  
  func new(_ notes: Data) -> BioticEcoData {
    return BioticEcoData(
      bioticFactor: bioticFactor,
      image: image,
      notes: notes)
  }
  
}
