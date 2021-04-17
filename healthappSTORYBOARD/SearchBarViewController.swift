//
//  TableViewController.swift
//  healthappSTORYBOARD
//
//  Created by David Baszucki on 3/7/21.
//

import UIKit

class TableViewController: UITableViewController, UISearchBarDelegate {
    
    let data = ["Medication1","Medication2","Medication3","Medication4","Medication5"]
    var filteredData: [String]!

    @IBOutlet weak var SearchBar: UISearchBar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SearchBar.delegate = self
        
        filteredData = data

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return filteredData.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")! as UITableViewCell
        
        cell.textLabel?.text = filteredData[indexPath.row]
        
        return cell
        
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        filteredData = []
        if searchText == "" {
            
            filteredData = data
            
        }
        else {
        for meds in data {
            
            if meds.lowercased().contains(searchText.lowercased()) {
                
                filteredData.append(meds)
                
                }
            
            }
            
        }
        
        self.tableView.reloadData()
        
        
    }

}
