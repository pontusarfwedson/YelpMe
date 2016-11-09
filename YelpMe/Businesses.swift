class Businesses {
    
    /** TODO */
    //let categories: [AnyObject]
    
    /** display_phone: "+1-415-908-3801" */
    let display_phone: String
    
    /** id: "yelp-san-francisco" */
    let id: String
    
    /** image_url: "http://s3-media3.fl.yelpcdn.com/bphoto/nQK-6_vZMt5n88zsAS94ew/ms.jpg" */
    let image_url: String
    
    /** is_claimed: true */
    let is_claimed: Bool
    
    /** is_closed: false */
    let is_closed: Bool
    
    /**
     * address: ["140 New Montgomery St"]
     * city: "San Francisco"
     * coordinate: {"latitude":37.7867703362929,"longitude":-122.399958372115}
     * country_code: "US"
     * cross_streets: "Natoma St & Minna St"
     * display_address: ["140 New Montgomery St","Financial District","San Francisco, CA 94105"]
     * geo_accuracy: 9.5
     * neighborhoods: ["Financial District","SoMa"]
     * postal_code: "94105"
     * state_code: "CA"
     */
    let location: Location
    
    /** mobile_url: "http://m.yelp.com/biz/yelp-san-francisco" */
    let mobile_url: String
    
    /** name: "Yelp" */
    let name: String
    
    /** phone: "4159083801" */
    let phone: String
    
    /** rating: 2.5 */
    let rating: Double
    
    /** rating_img_url: "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/c7fb9aff59f9/ico/stars/v1/stars_2_half.png" */
    let rating_img_url: String
    
    /** rating_img_url_large: "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/d63e3add9901/ico/stars/v1/stars_large_2_half.png" */
    let rating_img_url_large: String
    
    /** rating_img_url_small: "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/8e8633e5f8f0/ico/stars/v1/stars_small_2_half.png" */
    let rating_img_url_small: String
    
    /** review_count: 7140 */
    let review_count: Int
    
    /** snippet_image_url: "http://s3-media4.fl.yelpcdn.com/photo/YcjPScwVxF05kj6zt10Fxw/ms.jpg" */
    let snippet_image_url: String
    
    /** snippet_text: "What would I do without Yelp?\n\nI wouldn't be HALF the foodie I've become it weren't for this business.    \n\nYelp makes it virtually effortless to discover new..." */
    let snippet_text: String
    
    /** url: "http://www.yelp.com/biz/yelp-san-francisco" */
    let url: String
    
    init (_ json: [String: AnyObject]) {
        
        if let display_phone = json["display_phone"] as? String { self.display_phone = display_phone }
        else { self.display_phone = "" }
        
        if let id = json["id"] as? String { self.id = id }
        else { self.id = "" }
        
        if let image_url = json["image_url"] as? String { self.image_url = image_url }
        else { self.image_url = "" }
        
        if let is_claimed = json["is_claimed"] as? Bool { self.is_claimed = is_claimed }
        else { self.is_claimed = false }
        
        if let is_closed = json["is_closed"] as? Bool { self.is_closed = is_closed }
        else { self.is_closed = false }
        
        if let location = json["location"] as? [String: AnyObject] { self.location = Location(location) }
        else { self.location = Location([ : ]) }
        
        if let mobile_url = json["mobile_url"] as? String { self.mobile_url = mobile_url }
        else { self.mobile_url = "" }
        
        if let name = json["name"] as? String { self.name = name }
        else { self.name = "" }
        
        if let phone = json["phone"] as? String { self.phone = phone }
        else { self.phone = "" }
        
        if let rating = json["rating"] as? Double { self.rating = rating }
        else { self.rating = 0 }
        
        if let rating_img_url = json["rating_img_url"] as? String { self.rating_img_url = rating_img_url }
        else { self.rating_img_url = "" }
        
        if let rating_img_url_large = json["rating_img_url_large"] as? String { self.rating_img_url_large = rating_img_url_large }
        else { self.rating_img_url_large = "" }
        
        if let rating_img_url_small = json["rating_img_url_small"] as? String { self.rating_img_url_small = rating_img_url_small }
        else { self.rating_img_url_small = "" }
        
        if let review_count = json["review_count"] as? Int { self.review_count = review_count }
        else { self.review_count = 0 }
        
        if let snippet_image_url = json["snippet_image_url"] as? String { self.snippet_image_url = snippet_image_url }
        else { self.snippet_image_url = "" }
        
        if let snippet_text = json["snippet_text"] as? String { self.snippet_text = snippet_text }
        else { self.snippet_text = "" }
        
        if let url = json["url"] as? String { self.url = url }
        else { self.url = "" }
    }

}
