//
//  SearchViewController.swift
//  WeatherAppMCS
//
//  Created by MCS on 11/8/17.
//  Copyright © 2017 Zach Chandler. All rights reserved.
//

import Foundation
import UIKit
class SearchViewController: UIViewController {
    let searchController = UISearchController(searchResultsController: nil)
    var cities = DataSingleton.sharedInstance.cities
    var filteredCities = [City]()

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search Cities"
        self.navigationController?.navigationItem.searchController = searchController
        definesPresentationContext = true
    }
    func searchBarIsEmpty() -> Bool {
        // Returns true if the text is empty or nil
        return searchController.searchBar.text?.isEmpty ?? true
    }
    func isFiltering() -> Bool {
        return searchController.isActive && !searchBarIsEmpty()
    }
    func filterContentForSearchText(_ searchText: String, scope: String = "All") {
        filteredCities = cities.filter({( city : City) -> Bool in
            if let name = city.name {
                return name.lowercased().contains(searchText.lowercased())
            } else {
                return city.name!.lowercased().contains(searchText.lowercased())
            }
        })
        
        tableView.reloadData()
    }

}
extension SearchViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isFiltering() {
            return filteredCities.count
        }
        return cities.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "item", for: indexPath)
        let city: City
        if isFiltering() {
            city = filteredCities[indexPath.row]
        } else {
            city = cities[indexPath.row]
        }
        if let name = city.name {
            cell.textLabel?.text = name
        }
        if let state = city.state {
            cell.detailTextLabel?.text = state
        }
        return cell
    }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44.0
    }
}
extension SearchViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        // TODO
        let searchBar = searchController.searchBar
        let scope = searchBar.scopeButtonTitles![searchBar.selectedScopeButtonIndex]
        filterContentForSearchText(searchController.searchBar.text!, scope: scope)
        
    }
}
extension SearchViewController: UISearchBarDelegate {
    // MARK: - UISearchBar Delegate
    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        filterContentForSearchText(searchBar.text!, scope: searchBar.scopeButtonTitles![selectedScope])
    }
}
