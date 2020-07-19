//
//  SearchInteractor.swift
//  HomeworkVIPER
//
//  Created by Дмитрий Павлов on 19.07.2020.
//  Copyright © 2020 Дмитрий Павлов. All rights reserved.
//

import UIKit

protocol SearchInteractorInput {
    func getMovies(searchText text: String)
}

protocol SearchInteractorOutput: AnyObject {
    func moviesLoaded(result: [SearchEntity])
}

final class SearchInteractor {
    
    // MARK: Properties
    
    weak var presenter: SearchInteractorOutput?
    private var networkService = NetworkService()
    
    // MARK: Private
    
    private func searchMovies(text: String) -> [SearchEntity] {
        return networkService.getMovies(searchText: text)
    }
}

// MARK: SearchInteractorInput
extension SearchInteractor: SearchInteractorInput {
    
    func getMovies(searchText text: String) {
        let movies = searchMovies(text: text)
        presenter?.moviesLoaded(result: movies)
    }
}
