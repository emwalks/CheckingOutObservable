//
//  LibraryModel.swift
//  CheckingOutObservable
//
//  Created by Emma Walker - TVandMobile Platforms - Core Engineering on 17/12/2023.
//
import UIKit
import Foundation

@Observable class Library {
    var books: [Book] = [Book(), Book(title: "50 Things to Do by the Sea "), Book(title: "Ebb & Flow")]
    
    var availableBooksCount: Int {
        books.filter(\.isAvailable).count
    }

}


