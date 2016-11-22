import Foundation

class Coordinate {
    
    /** latitude: 37.7867703362929 */
    let latitude: Double
    
    /** longitude: -122.399958372115 */
    let longitude: Double
    
    init (_ json: [String: AnyObject]) {
        
        if let latitude = json["latitude"] as? Double { self.latitude = latitude }
        else { self.latitude = 0 }
        
        if let longitude = json["longitude"] as? Double { self.longitude = longitude }
        else { self.longitude = 0 }
    }
}
