//
//  PlaceModel.swift
//  FoursquareClone
//
//  Created by Abdullah Karagöz on 12.08.2023.
//

import Foundation
import UIKit

class PlaceModel {
    static let sharedInstance = PlaceModel()
    
    var placeName : String = ""
    var placeType : String = ""
    var placeAtmosphere : String = ""
    var placeImage = UIImage()
    var placeChosenLatitude : String = ""
    var placeChosenLongitude : String = ""
    var chosenPlaceId = ""
    
    private init(){}
}
