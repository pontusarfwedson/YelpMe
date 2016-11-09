class Location {
    
    /** address: [
     * 	  "140 New Montgomery St",
     * 	  ...
     * 	]
     */
    let address: [String]
    
    /** city: "San Francisco" */
    let city: String
    
    /**
     * latitude: 37.7867703362929
     * longitude: -122.399958372115
     */
    let coordinate: Coordinate
    
    /** country_code: "US" */
    let country_code: String
    
    /** cross_streets: "Natoma St & Minna St" */
    let cross_streets: String
    
    /** display_address: [
     * 	  "140 New Montgomery St",
     * 	  "Financial District",
     * 	  ...
     * 	]
     */
    let display_address: [String]
    
    /** geo_accuracy: 9.5 */
    let geo_accuracy: Double
    
    /** neighborhoods: [
     * 	  "Financial District",
     * 	  "SoMa",
     * 	  ...
     * 	]
     */
    let neighborhoods: [String]
    
    /** postal_code: "94105" */
    let postal_code: String
    
    /** state_code: "CA" */
    let state_code: String
    
    init (_ json: [String: AnyObject]) {
        
        if let address = json["address"] as? [String] { self.address = address }
        else { self.address = [String]() }
        
        if let city = json["city"] as? String { self.city = city }
        else { self.city = "" }
        
        if let coordinate = json["coordinate"] as? [String: AnyObject] { self.coordinate = Coordinate(coordinate) }
        else { self.coordinate = Coordinate([ : ]) }
        
        if let country_code = json["country_code"] as? String { self.country_code = country_code }
        else { self.country_code = "" }
        
        if let cross_streets = json["cross_streets"] as? String { self.cross_streets = cross_streets }
        else { self.cross_streets = "" }
        
        if let display_address = json["display_address"] as? [String] { self.display_address = display_address }
        else { self.display_address = [String]() }
        
        if let geo_accuracy = json["geo_accuracy"] as? Double { self.geo_accuracy = geo_accuracy }
        else { self.geo_accuracy = 0 }
        
        if let neighborhoods = json["neighborhoods"] as? [String] { self.neighborhoods = neighborhoods }
        else { self.neighborhoods = [String]() }
        
        if let postal_code = json["postal_code"] as? String { self.postal_code = postal_code }
        else { self.postal_code = "" }
        
        if let state_code = json["state_code"] as? String { self.state_code = state_code }
        else { self.state_code = "" }
    }
}
