//
//  HomepageTableView.swift
//  TestApp
//
//  Created by Rapha Solution on 10/17/18.
//  Copyright © 2018 Rapha Solution. All rights reserved.
//

import Foundation
import UIKit
class HomepageTableView : UIViewController,UITableViewDataSource,UITableViewDelegate{
  
    @IBOutlet weak var tableView: UITableView!
    //var categories = ["Monday","Tuesday","Wednesday","Thursday","Friday"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Stories"
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
      return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")

        return cell!
    }
    
}
