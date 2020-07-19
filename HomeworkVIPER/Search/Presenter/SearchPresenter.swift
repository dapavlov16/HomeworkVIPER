//
//  SearchPresenter.swift
//  HomeworkVIPER
//
//  Created by Дмитрий Павлов on 19.07.2020.
//  Copyright © 2020 Дмитрий Павлов. All rights reserved.
//

import UIKit

final class SearchPresenter {
    
    // MARK: Properties
    
    weak var view: SearchViewInput?
    var interactor: SearchInteractorInput?
    var router: SearchRouterInput?
}

// MARK: SearchViewOutput
extension SearchPresenter: SearchViewOutput {
    
    func showMovieDetails(movie: SearchEntity) {
        router?.showMovieDetails(movie: movie)
    }
    
    
    func viewDidLoad() {
        // stub
    }
    
    func searchMovies(searchText text: String) {
        interactor?.getMovies(searchText: text)
    }
}

// MARK: SearchInteractorOutput
extension SearchPresenter: SearchInteractorOutput {
    func moviesLoaded(result: [SearchEntity]) {
        view?.showMovies(data: result)
    }
    
    
}
