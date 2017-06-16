//
//  AddNoteViewController.swift
//  SampleIosAppViper
//
//  Created by MacDD02 on 15/06/17.
//  Copyright © 2017 darlandev. All rights reserved.
//

import Foundation
import UIKit

class AddNoteTableViewController: UITableViewController {
    @IBOutlet var txtTitle:UITextField!
    @IBOutlet var txtDescription:UITextView!
    
    
    override func viewDidLoad() {
        self.navigationItem.title = "New Note"
        //cellTitle.txtTitle?.text = "aaaa"
        //self.tableView.register(cellTitle.self, forCellReuseIdentifier: "CellTitle")
      //  self.tableView.register(AddNoteCellDescription.self, forCellReuseIdentifier: "CellDescription")
    }
}
