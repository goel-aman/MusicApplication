//
//  SongViewModel.swift
//  MusicApplication
//
//  Created by aman on 04/04/24.
//

import Foundation

class SongViewModel {
    private let manager = NetworkManager()
    
    func fetchSongs() {
        Task {
            do {
                let songsResponse: Response = try await manager.getSongData(from: "https://cms.samespace.com/items/songs")
            } catch {
                print(error)
            }
            
        }
        
    }
}
