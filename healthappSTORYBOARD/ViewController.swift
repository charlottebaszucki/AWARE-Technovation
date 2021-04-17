//
//  ViewController.swift
//  healthappSTORYBOARD
//
//  Created by David Baszucki on 3/7/21.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    let titles = ["Anonymous Tiger","Anonymous Lion","Anonymous Elephant","Anonymous Zebra","Anonymous Hyena"]
    let descriptions = ["This is review 1 text...", "This is review 2 text...","This is review 3 text...","This is review 4 text...","This is review 5 text..."]

    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableView.delegate = self
        tableView.dataSource = self
    
 
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath)as! TableViewCell
        cell.titleLabel01.text = self.titles[indexPath.row]
        cell.textLabel02.text = self.descriptions[indexPath.row]
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(identifier: "DetailViewController") as? DetailViewController
        vc?.titles = titles[indexPath.row]
        vc?.descriptions = descriptions[indexPath.row]
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    

}
