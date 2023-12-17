//
//  BookView.swift
//  CheckingOutObservable
//
//  Created by Emma Walker - TVandMobile Platforms - Core Engineering on 17/12/2023.
//

import SwiftUI

struct BookView: View {
    
    var book: Book
       
       var body: some View {
           List {
               Text(book.title)
               HStack {
                   Text(book.isAvailable ? "Available for checkout" : "Waiting for return")
                   Spacer()
                   Button(book.isAvailable ? "Check out" : "Return") {
                       book.isAvailable.toggle()
                   }
               }
           }
       }
}

#Preview {
    BookView(book: Book())
}
