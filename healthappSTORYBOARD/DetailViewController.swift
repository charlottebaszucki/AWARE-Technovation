//
//  DetailViewController.swift
//  healthappSTORYBOARD
//
//  Created by David Baszucki on 4/5/21.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var LBL: UILabel!
    @IBOutlet weak var SubTitle: UILabel!
    
    var titles = ""
    var descriptions = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        LBL.text = "\(titles)"
        SubTitle.text = "\(descriptions)"
        
    }
    

}
