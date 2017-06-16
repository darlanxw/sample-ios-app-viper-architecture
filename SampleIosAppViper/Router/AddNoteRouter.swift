//
//  AddNoteRouter.swift
//  SampleIosAppViper
//
//  Created by MacDD02 on 15/06/17.
//  Copyright © 2017 darlandev. All rights reserved.
//

import Foundation
import UIKit

class AddNoteRouter {
    
    var addNoteTableViewController:AddNoteTableViewController = AddNoteTableViewController()
    let presenter:NotePresenter
    let repository:NoteLocalData
    let interactor:NoteInteractor
    
    init(repository: NoteLocalData) {
        presenter = NotePresenter()
        self.repository = repository
        interactor = NoteInteractor(noteRepository: self.repository)
        
        //define o presenter e interactor do addnote
    }
    
    func present(navigation: UINavigationController?) {
        
        if let myNavigation = navigation {
            myNavigation.pushViewController(addNoteTableViewController, animated: true)
        }
    }
}
