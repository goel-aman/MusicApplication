//
//  NetworkManager.swift
//  MusicApplication
//
//  Created by aman on 03/04/24.
//

import Foundation

enum DataError: Error {
    case invalidResponse
    case invalidURL
    case invalidData
    case network(Error?)
}

class NetworkManager {
    func getSongData(from url: String) async throws -> Response {
//        var dataa = Response(data: [])
//        
//        URLSession.shared.dataTask(with: URL(string: url)!) { data, response, error in
//            guard let data = data, error == nil else {
//                print("something went wrong")
//                return
//            }
//            
//            var result: Response?
//            
//            do {
//                result = try JSONDecoder().decode(Response.self, from: data)
//            } catch {
//                print("failed to convert \(error.localizedDescription)")
//            }
//            
//            
//            guard let json = result else {
//                return
//            }
//            print("json is: \(json)")
//            dataa = json
//            
//        }.resume()
//        
//        return dataa
//        
//        
//        
//        
//
        
        guard let url = URL(string: url) else {
            throw DataError.invalidURL
        }
    
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
            throw DataError.invalidResponse
        }
        
        return try JSONDecoder().decode(Response.self, from: data)
    }
}
