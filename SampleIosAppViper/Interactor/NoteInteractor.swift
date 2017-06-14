//
//  NoteInteractor.swift
//  SampleIosAppViper
//
//  Created by MacDD02 on 13/06/17.
//  Copyright © 2017 darlandev. All rights reserved.
//

import Foundation

class NoteInteractor: NoteInteractorProtocol {
    
    var noteRepository:NoteLocalData
    
    init(noteRepository: NoteLocalData) {
        self.noteRepository = noteRepository
    }
    func getAll() -> [(title: String, description: String)]{
        return noteRepository.getAll()
    }
}
