//
//  ViewController.swift
//  searchcontroller
//
//  Created by Shilpee Gupta on 07/02/23.
//

import UIKit

class ResultsVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
    }
}

class ViewController: UIViewController, UISearchResultsUpdating {
    
    private var SearchBar: UISearchController = {
            let sb = UISearchController()
            sb.searchBar.placeholder = "Search"
            sb.searchBar.searchBarStyle = .minimal
            return sb
    }()
    
    let searchController = UISearchController(searchResultsController: ResultsVC())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Welcome!🎉"
        navigationItem.searchController = searchController
        searchController.searchResultsUpdater = self
        
        
        //        let search = UISearchController(searchResultsController: nil)
        //        search.searchResultsUpdater = self
        //        search.obscuresBackgroundDuringPresentation = false
        //        search.searchBar.placeholder = "Type something"
        //        navigationItem.searchController = search
        
//        view.backgroundColor = .systemMint
//        navigationItem.title = "Home"
//        SearchBar.searchResultsUpdater = self
//        navigationItem.searchController = SearchBar
        
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        //need to pass this text and string match mock with this input text
        guard let text = searchController.searchBar.text else {
            return
        }
        let vc = searchController.searchResultsController as? ResultsVC
        print(text)
    }
    
}

//class SecondViewController: UIViewController {
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .systemPink
//
//    }
//}

