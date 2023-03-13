//
//  APICaller.swift
//  Kino KZ
//
//  Created by Aruzhan Boranbay on 10.03.2023.
//

import Foundation

protocol APICallerDelegate {
    func didUpdateMovieList(with movieList: [MovieModel])
    func didFailWithError(_ error: Error)
}

struct APICaller {
    
    var delegate: APICallerDelegate?
    
    func fetchRequest() {
        let urlString = "https://api.themoviedb.org/3/trending/movie/day?api_key=b62d6f2d0eb4eccf7b9796b6856960ce"
        guard let url = URL(string: urlString) else {fatalError("Error link!")}
        let task = URLSession.shared.dataTask(with: url) {data, _, error in
            if let data, error == nil {
//                parseJSON(data)
                if let movieList = parseJSON(data){
                    delegate?.didUpdateMovieList(with: movieList)
                }else {
                    delegate?.didFailWithError(error!)
                }
            }else{
                delegate?.didFailWithError(error!)
            }
        }
        task.resume()
    }
    
    func parseJSON(_ data: Data) -> [MovieModel]? {
        var movieList: [MovieModel] = []
        do{
            let decodedData = try JSONDecoder().decode(MovieData.self, from: data)
//            print(decodedData.results[0].title)
            for movie in decodedData.results {
//                print(movie.title)
                let movieModel = MovieModel(adult: movie.adult, backdropPath: movie.backdrop_path, id: movie.id, title: movie.title, description: movie.overview, posterPath: movie.poster_path, mediaType: movie.media_type, genreIds: movie.genre_ids, releaseDate: movie.release_date, voteAverage: movie.vote_average)
                movieList.append(movieModel)
            }
        }catch {
            print(error)
            return nil
        }
        
        return movieList
    }
}
