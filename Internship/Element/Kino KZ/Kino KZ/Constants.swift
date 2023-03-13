//
//  Constants.swift
//  Kino KZ
//
//  Created by Aruzhan Boranbay on 06.03.2023.
//

import Foundation

struct Constants {
    
    struct Keys {
        static let api = "b62d6f2d0eb4eccf7b9796b6856960ce"
    }
    
    struct Identifiers {
        static let categoryCollectionViewCell = "MyCollectionViewCell"
        static let trandingCollectionViewCell = "TrendingCollectionViewCell"
        static let categoryTableViewCell = "categoryTableViewCell"
        static let movieCollectionViewCell = "MoviewCollectionViewCell"
        static let placeCollectionViewCell = "PlaceCollectionViewCell"
    }
    
    struct Voules {
        
    }
    
    struct Colors {
        
    }
    
    struct Links {
        static let apiUrl = "https://api.themoviedb.org/3/"
        static let imageUrl = "https://image.tmdb.org/t/p/w500/" // + poster path
    }
    
}

enum Categories: String, CaseIterable {
    case allCase = "🔥All"
    case streamming = "🎥Streamming"
    case onTV = "📺On TV"
    case inTheaters = "🎭In Theaters"
}
