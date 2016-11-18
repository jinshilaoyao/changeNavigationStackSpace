//
//  tableViewController.swift
//  aaa
//
//  Created by yesway on 16/8/11.
//  Copyright © 2016年 joker. All rights reserved.
//

import UIKit

class tableViewController: UITableViewController {
    
    @IBOutlet var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.register(UINib(nibName: "Acell", bundle: nil), forCellReuseIdentifier: "AcellID")
        tableview.register(UINib(nibName: "Bcell", bundle: nil), forCellReuseIdentifier: "BcellID")
    }
}
extension tableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellID = Bool(indexPath.row%2 == 1) ? "AcellID" : "BcellID"
        
        let cell = tableview.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! normalCell
//        let cell = tableview.dequeueReusableCell(withIdentifier: "AcellID")
        cell.left?.text = "\(indexPath)"
        cell.right?.text = "\(indexPath)"
        return cell
    }
    
}
