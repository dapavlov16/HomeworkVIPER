//
//  ViewController.swift
//  HomeworkVIPER
//
//  Created by Дмитрий Павлов on 19.07.2020.
//  Copyright © 2020 Дмитрий Павлов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let searchAssembly = SearchAssembly.assembly()
        navigationController?.present(searchAssembly, animated: true, completion: nil)
    }


}

