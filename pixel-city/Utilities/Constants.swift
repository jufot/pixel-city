//
//  Constants.swift
//  pixel-city
//
//  Created by Jeremiah Ufot on 11/19/18.
//  Copyright © 2018 Jeremiah Ufot. All rights reserved.
//

import Foundation

let apiKey = "b2f3f825b226f5f901ec51ad5581dbe9"

func flickrUrl(forAPIKey key: String, withAnnotation annontation: DroppablePin, andNumberOfPhotos number: Int) -> String {
    return "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annontation.coordinate.latitude)&lon=\(annontation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
}
