//
//  ProductStructs.swift
//  CleanFood
//
//  Created by Ewald Kerner on 15.04.20.
//  Copyright © 2020 Ewald Kerner. All rights reserved.
//

import Foundation
import SwiftUI

struct Product {
    var uuid:String
    var image:Image
    var title:String
    var price:Double
    var description:String
    var reviews:[Review]
    
    var rating:Double {
        get {
            reviews.reduce(0) { (res, review) -> Double in
                res + review.rating
            }
        }
    }
}

struct Review {
    var name:String
    var rating:Double
    var content:String
}

