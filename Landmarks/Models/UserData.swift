//
//  UserData.swift
//  Landmarks
//
//  Created by Leonardo Bilia on 6/23/19.
//  Copyright © 2019 Leonardo Bilia. All rights reserved.
//


import SwiftUI
import Combine

final class UserData: BindableObject  {
    let didChange = PassthroughSubject<UserData, Never>()
    
    var showFavoritesOnly = false {
        didSet {
            didChange.send(self)
        }
    }
    
    var landmarks = landmarkData {
        didSet {
            didChange.send(self)
        }
    }
}
