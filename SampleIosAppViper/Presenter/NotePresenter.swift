//
//  NotePresenter.swift
//  SampleIosAppViper
//
//  Created by MacDD02 on 13/06/17.
//  Copyright © 2017 darlandev. All rights reserved.
//

import Foundation

class NotePresenter {
    var noteRepository:NoteLocalData
    
    init() {
        noteRepository = NoteLocalData()
        print("Init")
    }
    
    func list() -> [(title: String, description: String)]{
        return NoteInteractor(noteRepository: noteRepository).getAll()
    }
}
