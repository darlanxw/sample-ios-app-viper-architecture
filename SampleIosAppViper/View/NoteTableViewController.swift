//
//  ViewController.swift
//  SampleIosAppViper
//
//  Created by MacDD02 on 13/06/17.
//  Copyright © 2017 darlandev. All rights reserved.
//

import UIKit

class NoteTableViewController: UITableViewController {
    @IBOutlet var btAddNote:UIBarButtonItem!
    var lstNotes:[(title: String, description: String)] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Notes"
        lstNotes = NotePresenter.init().list()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lstNotes.count
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as UITableViewCell?
        
        if let myCell = cell {
            myCell.textLabel?.text = lstNotes[indexPath.row].title
            myCell.detailTextLabel?.text = lstNotes[indexPath.row].description
            
            return myCell
        }
        
        return UITableViewCell()
    }
    
    @IBAction func addNote() {
        NoteRouter.init(noteTableViewController: self).goToAddNote()
    }
}

