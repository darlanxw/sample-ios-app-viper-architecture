//
//  NoteInteractorProtocol.swift
//  SampleIosAppViper
//
//  Created by MacDD02 on 13/06/17.
//  Copyright © 2017 darlandev. All rights reserved.
//

import Foundation

protocol NoteInteractorProtocol {
    func getAll() -> [(title: String, description: String)]
}
