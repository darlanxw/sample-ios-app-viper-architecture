//
//  NoteLocalData.swift
//  SampleIosAppViper
//
//  Created by MacDD02 on 13/06/17.
//  Copyright © 2017 darlandev. All rights reserved.
//

import Foundation

class NoteLocalData : NoteLocalDataProtocol {

    func getAll() -> [(title: String, description: String)]{
        var newTuple = [(title:String, description: String)]()
        newTuple.append((title: "Title 1", description: "Description 1"))
        newTuple.append((title: "Title 2", description: "Description 2"))
        newTuple.append((title: "Title 3", description: "Description 3"))
        
        return newTuple
    }
}
