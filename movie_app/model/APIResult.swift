//
//  APIResult.swift
//  movie_app
//
//  Created by Qenawi on 9/27/20.
//  Copyright © 2020 qenawi. All rights reserved.
//

import Foundation
struct APIResults:Decodable{
    let page:Int
    let numResults:Int
    let numPages:Int
    let movies:[Movie]?
    private enum CodingKeys: String , CodingKey{
      case page , numResults = "total_results", numPages = "total_pages",movies = "results"
    }
}
