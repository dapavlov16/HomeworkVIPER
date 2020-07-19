//
//  SearchViewController.swift
//  HomeworkVIPER
//
//  Created by Дмитрий Павлов on 19.07.2020.
//  Copyright © 2020 Дмитрий Павлов. All rights reserved.
//

import UIKit

protocol SearchViewInput: AnyObject {
    func showMovies(data: [SearchEntity])
}

protocol SearchViewOutput {
    func viewDidLoad()
    func searchMovies(searchText text: String)
    func showMovieDetails(movie: SearchEntity)
}

final class SearchViewController: UIViewController {

    // MARK: Properties
    
    var presenter: SearchViewOutput?
    
    private var searchTextField: UITextField!
    private var searchButton: UIButton!
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureView()
        presenter?.viewDidLoad()
    }
    
    // MARK: Private
    
    private func configureView() {
        searchTextField = UITextField()
        searchButton = UIButton()
        
        // configure stub
    }
    
    @objc private func searchMovies() {
        if let text = searchTextField.text {
            presenter?.searchMovies(searchText: text)
        }
    }
}

// MARK: SearchViewInput
extension SearchViewController: SearchViewInput {
    
    func showMovies(data: [SearchEntity]) {
        // stub
    }
}
