//
//  UserFetch.swift
//  BlueEQ Prototype
//
//  Created by Alexander Gillie on 2/26/19.
//  Copyright © 2019 Alexander Gillie. All rights reserved.
//

import Alamofire
import SwiftyJSON
import PromiseKit

class UserFetch {
    var currentUser = User()
    let getUserTokenURL = "https://app.blueeq.com/api/login"
    
    init() {
        let token = loginAndLoadAssessments(withEmail: "alexgillie4@gmail.com", withPassword: "G:w3THzyk_8.UsQ")
      
    }
    
//    func getUserToken(withEmail email: String, withPassword password: String) -> Promise<(data: Data, response: PMKAlamofireDataResponse)> {
//
//        var authToken = ""
//
//    }

//                response in
//                    do {
//                        let json = try JSON(data: response.data!)
//                        authToken = json["token"].rawString()!
//                        print(json)
//                    } catch {
//                        print("Error:")
//                    }

    
func loginAndLoadAssessments(withEmail email: String, withPassword password: String) {

    let userTokenURL = self.getUserTokenURL
    let getProfileURL = "https://app.blueeq.com/api/profile"
    let getAssessmentsURL = "https://app.blueeq.com/api/assessments"
    let getResultsURL = "https://app.blueeq.com/api/results/"
    let params: Parameters = [
        "email": email,
        "password": password
    ]
   firstly {
         Alamofire.request(userTokenURL, method: .post, parameters: params, encoding: JSONEncoding.default).responseData()
    }.map{ data  in
            let authToken = JSON(data.data)["token"].rawString()!
            self.currentUser.setToken(token: "Bearer " + authToken)
    }.then { Void -> Promise<(data: Data, response: PMKAlamofireDataResponse)> in
        let headers : HTTPHeaders  = [
            "Authorization": self.currentUser.getToken()
        ]
        return Alamofire.request(getProfileURL, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: headers).responseData()
    }.map { data in
        let json = JSON(data.data)
        print(json)
        
    }.catch{ error in
            print("error")
        }
    }
    
//        let url = URL(string: "\(getUserTokenURL)?email=\(email)&password=\(password)")!
//        var request = URLRequest(url: url)
//        request.httpMethod = "POST"
//        let task = URLSession.shared.dataTask(with: request) { data, response, error in
//            guard let data = data,
//                let response = response as? HTTPURLResponse,
//                error == nil else {                                              // check for fundamental networking error
//                    print("error", error ?? "Unknown error")
//                    return
//            }
//            
//            guard (200 ... 299) ~= response.statusCode else {                    // check for http errors
//                print("statusCode should be 2xx, but is \(response.statusCode)")
//                print("response = \(response)")
//                return
//            }
//            
////            let responseString = String(data: data, encoding: .utf8)
//            do {
//                //create json object from data
//                if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
//                    if let token = json["token"] as? String {
//                        authToken = token
//                    }
//                    // handle json...
//                }
//            } catch let error {
//                print(error.localizedDescription)
//            }
//        }
//        
//        task.resume()
//        return authToken
//    }
    
}
