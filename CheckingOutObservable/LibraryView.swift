//
//  LibraryView.swift
//  CheckingOutObservable
//
//  Created by Emma Walker - TVandMobile Platforms - Core Engineering on 17/12/2023.
//

import SwiftUI

struct LibraryView: View {
    /*
     @Environment Below is crashing
     From
     https://developer.apple.com/documentation/SwiftUI/Managing-model-data-in-your-app
     
     @Environment(Library.self) private var library
     */
    
    // Will not update when any property of `book` changes.
    //@State private var library = Library()
    
    // Will update when `book.title` changes.
    // var library = Library()
    
    @Environment(\.library) private var library
    
    var body: some View {
            NavigationStack {
                Text("Books available: \(library.availableBooksCount)")
                List(library.books) { book in
                    NavigationLink(book.title, destination: BookView(book: book))
                        .foregroundColor(Color(uiColor: book.color)
                    )
                }
                .navigationTitle("Surf Library")
            }
    }
}

#Preview {
    LibraryView()
}
