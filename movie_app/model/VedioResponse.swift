//
//  VedioResponse.swift
//  movie_app
//
//  Created by Qenawi on 9/27/20.
//  Copyright © 2020 qenawi. All rights reserved.
//

import Foundation

struct MovieResult:Decodable {
    let details:[VedioKey]
    private enum CodingKeys: String,CodingKey{
        case details = "results"
    }
}

struct VedioKey:Decodable {
    let key:String
    
}
