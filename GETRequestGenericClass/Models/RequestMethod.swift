//
//  RequestMethod.swift
//
//  Created by Administrator on 9/4/17.
//  Copyright © 2017 Administrator. All rights reserved.
//  Author: Efrain Perez
//  email: efrain.abperez23@gmail.com

import Foundation

class RequestMethod<T> {
    
    
    func taskForGETMethod(_ url: URL,completionHandlerForGET: @escaping (_ result: [T]?, _ error: NSError?) -> Void) -> URLSessionDataTask {
        
        /* 4. Make the request */
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            func sendError(_ error: String) {
                print(error)
                let userInfo = [NSLocalizedDescriptionKey : error]
                completionHandlerForGET([], NSError(domain: "taskForGETMethod", code: 1, userInfo: userInfo))
            }
            
            /* GUARD: Was there an error? */
            guard (error == nil) else {
                sendError("There was an error with your request: \(error!)")
                return
            }
            
            /* GUARD: Did we get a successful 2XX response? */
            guard let statusCode = (response as? HTTPURLResponse)?.statusCode, statusCode >= 200 && statusCode <= 299 else {
                sendError("Your request returned a status code other than 2xx!")
                return
            }
            
            /* GUARD: Was there any data returned? */
            guard let data = data else {
                sendError("No data was returned by the request!")
                return
            }
            
            /* Parse the data and use the data (happens in completion handler) */
            self.convertDataWithCompletionHandler(data, completionHandlerForConvertData: completionHandlerForGET)
            
        }
        /* 7. Start the request */
        task.resume()
        
        return task
    }
    
    private func convertDataWithCompletionHandler(_ data: Data, completionHandlerForConvertData: (_ result: [T]?, _ error: NSError?) -> Void) {
        
        var parsedResult: [T] = []
        do {
            parsedResult = try JSONDecoder().decode([T].self, from: data)
        } catch {
            let userInfo = [NSLocalizedDescriptionKey : "Could not parse the data as JSON: '\(data)'"]
            completionHandlerForConvertData([], NSError(domain: "convertDataWithCompletionHandler", code: 1, userInfo: userInfo))
        }
        
        completionHandlerForConvertData(parsedResult, nil)
    }
}
