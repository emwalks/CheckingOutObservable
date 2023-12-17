//
//  BookModel.swift
//  CheckingOutObservable
//
//  Created by Emma Walker - TVandMobile Platforms - Core Engineering on 17/12/2023.
//
import UIKit
import Foundation

@Observable class Book: Identifiable {
    var title = "Saltwater in the Blood"
    var author = Author()
    var isAvailable = true
    
    // this is a ViewModel concern?
    var color: UIColor {
        guard isAvailable else { return UIColor.gray }
        return UIColor.systemBlue
    }
    
    init(title: String = "Saltwater in the Blood", author: Author = Author(), isAvailable: Bool = true) {
        self.title = title
        self.author = author
        self.isAvailable = isAvailable
    }
}

struct Author {
    var firstName = "Easkey"
    var surname = "Britton"
}
