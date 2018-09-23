import Foundation

struct Site: Codable {
  
  let name: String?
  let latitude: Decimal?
  let longitude: Decimal?
  let coordinateAccuracy: Decimal?
  let altitude: Decimal?
  let altitudeAccuracy: Decimal?
  let photo: Data?
  let notes: Data?
  let place: String?
  let street: String?
  let city: String?
  let state: String?
  let postalCode: String?
  let country: String?
  let ecoFactors: [EcoFactor]?
  
  enum CodingKeys: String, CodingKey {
    case name
    case latitude
    case longitude
    case coordinateAccuracy
    case altitude
    case altitudeAccuracy
    case photo
    case notes
    case place
    case street
    case city
    case state
    case postalCode
    case country
    case ecoFactors
  }
  
  init(name: String? = nil,
       latitude: Decimal? = nil,
       longitude: Decimal? = nil,
       coordinateAccuracy: Decimal? = nil,
       altitude: Decimal? = nil,
       altitudeAccuracy: Decimal? = nil,
       photo: Data? = nil,
       notes: Data? = nil,
       place: String? = nil,
       street: String? = nil,
       city: String? = nil,
       state: String? = nil,
       postalCode: String? = nil,
       country: String? = nil,
       ecoFactors: [EcoFactor]? = nil) {
    self.name = name
    self.latitude = latitude
    self.longitude = longitude
    self.coordinateAccuracy = coordinateAccuracy
    self.altitude = altitude
    self.altitudeAccuracy = altitudeAccuracy
    self.photo = photo
    self.notes = notes
    self.place = place
    self.street = street
    self.city = city
    self.state = state
    self.postalCode = postalCode
    self.country = country
    self.ecoFactors = ecoFactors
  }
  
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    
    name = try container.decodeIfPresent(String.self, forKey: .name)
    latitude = try container.decodeIfPresent(Decimal.self, forKey: .latitude)
    longitude = try container.decodeIfPresent(Decimal.self, forKey: .longitude)
    coordinateAccuracy = try container.decodeIfPresent(Decimal.self,forKey: .coordinateAccuracy)
    altitude = try container.decodeIfPresent(Decimal.self, forKey: .altitude)
    altitudeAccuracy = try container.decodeIfPresent(Decimal.self, forKey: .altitudeAccuracy)
    photo = try container.decodeIfPresent(String.self, forKey: .photo)?.base64Decode()
    notes = try container.decodeIfPresent(String.self, forKey: .notes)?.base64Decode()
    place = try container.decodeIfPresent(String.self, forKey: .place)
    street = try container.decodeIfPresent(String.self, forKey: .street)
    city = try container.decodeIfPresent(String.self, forKey: .city)
    state = try container.decodeIfPresent(String.self, forKey: .state)
    postalCode = try container.decodeIfPresent(String.self, forKey: .postalCode)
    country = try container.decodeIfPresent(String.self, forKey: .country)
    ecoFactors = try container.decodeIfPresent([EcoFactor].self, forKey: .ecoFactors)
  }
  
  func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    
    try container.encodeIfPresent(name, forKey: .name)
    try container.encodeIfPresent(latitude, forKey: .latitude)
    try container.encodeIfPresent(longitude, forKey: .longitude)
    try container.encodeIfPresent(coordinateAccuracy, forKey: .coordinateAccuracy)
    try container.encodeIfPresent(altitude, forKey: .altitude)
    try container.encodeIfPresent(altitudeAccuracy, forKey: .altitudeAccuracy)
    try container.encodeIfPresent(photo?.base64EncodedString(), forKey: .photo)
    try container.encodeIfPresent(notes?.base64EncodedString(), forKey: .notes)
    try container.encodeIfPresent(place, forKey: .place)
    try container.encodeIfPresent(street, forKey: .street)
    try container.encodeIfPresent(city, forKey: .city)
    try container.encodeIfPresent(state, forKey: .state)
    try container.encodeIfPresent(postalCode, forKey: .postalCode)
    try container.encodeIfPresent(country, forKey: .country)
    try container.encodeIfPresent(ecoFactors, forKey: .ecoFactors)
  }
  
}
