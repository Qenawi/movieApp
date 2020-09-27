//
//  Movie.swift
//  movie_app
//
//  Created by Qenawi on 9/27/20.
//  Copyright © 2020 qenawi. All rights reserved.
//

import Foundation
struct Movie:Decodable {
    let id:Int!
    let posterPath:String?
    let vedioPath:String?
    let backdrop:String?
    let title:String?
    var releaseDate:String?
    var rating :Double?
    var overview:String
    private enum CodingKeys: String , CodingKey{
       case id , posterPath="poster_path",vedioPath,backdrop="backdrop_path",title,releaseDate="release_date",
       rating="vote_average",overview
    }
}
