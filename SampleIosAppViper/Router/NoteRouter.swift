//
//  NoteRouter.swift
//  SampleIosAppViper
//
//  Created by MacDD02 on 13/06/17.
//  Copyright © 2017 darlandev. All rights reserved.
//

import Foundation
import UIKit

class NoteRouter: NoteRouterProtocol {
    var noteTableViewController:NoteTableViewController
    let presenter:NotePresenter
    let repository:NoteLocalData
    let interactor:NoteInteractor
    
    init(noteTableViewController: NoteTableViewController) {
        presenter = NotePresenter()
        repository = NoteLocalData()
        interactor = NoteInteractor(noteRepository: repository)
        
        self.noteTableViewController = noteTableViewController
    }
    

    func goToAddNote() {
        let addNoteRouter = AddNoteRouter(repository: repository)
        addNoteRouter.present(navigation: noteTableViewController.navigationController)
    }
    
    func present(window: UIWindow) {
        window.rootViewController = noteTableViewController
    }
    
}
