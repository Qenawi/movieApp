//
//  AFNetworkLayer.swift
//  movie_app
//
//  Created by Qenawi on 9/27/20.
//  Copyright © 2020 qenawi. All rights reserved.
//

import Foundation
import Alamofire

enum ApiConsts : String {
case APIKEY="7d1dd3f8f443ecde27c323485a170bdc"
case BaseURL = "https://api.themoviedb.org/3/movie"
case latest = "/upcoming"
}
class AlamoFireNetWorkLayer
{
    func pullNewMovies(completion: @escaping (APIResults?) ->Void)
    {
             let req=AF.request(ApiConsts.BaseURL.rawValue+ApiConsts.latest.rawValue
            ,method: .get,
            parameters: ["api_key":ApiConsts.APIKEY.rawValue])
            req.validate().responseDecodable(of:APIResults.self){ response  in
                switch response.result
                {
                case let .success(result):
                  print("sucess sucess")
                  print(result)
                  completion(result)
                case let .failure(error):
                 print("failed")
                 print(error.failureReason ?? "default error")
                }//switch
        }
    }
    func GenericAF<T:Decodable,EnCoder:ParameterEncoder>(url:String ,mType: HTTPMethod ,mParams:Dictionary<String,Any>,mEncoder: EnCoder ,completion: @escaping (T?)->Void)
    {
        let req = AF.request(url,method: mType,parameters: mParams)
        req.validate().responseDecodable(of:T.self) { response in
            switch response.result
            {
            case let .success(mResult):
                print("sucess")
                print(mResult)
                completion(mResult)
            case let .failure(mError):
                print("failed")
                print(mError.failureReason ?? "defalt error")
                
            }//switch
            
        }//req end
        
    }//generic func
  
}


