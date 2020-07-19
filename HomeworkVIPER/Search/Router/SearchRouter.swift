//
//  SearchRouter.swift
//  HomeworkVIPER
//
//  Created by Дмитрий Павлов on 19.07.2020.
//  Copyright © 2020 Дмитрий Павлов. All rights reserved.
//

import UIKit

protocol SearchRouterInput {
    func showMovieDetails(movie: SearchEntity)
}

final class SearchRouter {
    
    // MARK: Properties
    
    unowned let view: UIViewController
    
    // MARK: Init
    
    init(view: UIViewController) {
        self.view = view
    }
}

// MARK: SearchRouterInput
extension SearchRouter: SearchRouterInput {
    
    func showMovieDetails(movie: SearchEntity) {
        // navigation stub
    }
}
