//
//  Printing_Document_Sample_AppApp.swift
//  Printing Document Sample App
//
//  Created by Masamichi Ebata on 2024/07/11.
//

import SwiftUI

@main
struct Printing_Document_Sample_AppApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: Printing_Document_Sample_AppDocument()) { file in
            ContentView(document: file.$document)
        }
        .commands {
            PrintCommands()
        }
    }
}
