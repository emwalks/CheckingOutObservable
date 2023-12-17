//
//  CheckingOutObservableApp.swift
//  CheckingOutObservable
//
//  Created by Emma Walker - TVandMobile Platforms - Core Engineering on 17/12/2023.
//

import SwiftUI

@main
struct CheckingOutObservableApp: App {
    @State private var library = Library()
    
    var body: some Scene {
        WindowGroup {
            LibraryView()
                .environment(library)
        }
    }
}

extension EnvironmentValues {
    var library: Library {
        get { self[LibraryKey.self] }
        set { self[LibraryKey.self] = newValue }
    }
}

private struct LibraryKey: EnvironmentKey {
    static var defaultValue: Library = Library()
}

