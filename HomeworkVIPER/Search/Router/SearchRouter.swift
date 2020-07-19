//
//  SearchRouter.swift
//  HomeworkVIPER
//
//  Created by Дмитрий Павлов on 19.07.2020.
//  Copyright © 2020 Дмитрий Павлов. All rights reserved.
//

import UIKit

protocol SearchRouterInput {
    func showMovieDetails(movie: SearchEntity, from view: UIViewController)
}

final class SearchRouter {
    
}

// MARK: SearchRouterInput
extension SearchRouter: SearchRouterInput {
    
    func showMovieDetails(movie: SearchEntity, from view: UIViewController) {
        // navigation stub
    }
}
