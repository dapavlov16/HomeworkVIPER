//
//  SearchAssembly.swift
//  HomeworkVIPER
//
//  Created by Дмитрий Павлов on 19.07.2020.
//  Copyright © 2020 Дмитрий Павлов. All rights reserved.
//

import UIKit

final class SearchAssembly {

    static func assembly() -> UIViewController {
        
        let networkService = NetworkService()
        let view = SearchViewController()
        let presenter = SearchPresenter()
        let interactor = SearchInteractor(networkService: networkService)
        let router = SearchRouter(view: view)
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        interactor.presenter = presenter
        
        return view
    }
}
