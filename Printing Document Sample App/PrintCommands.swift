//
//  PrintCommands.swift
//  Printing Document Sample App
//
//  Created by Masamichi Ebata on 2024/07/12.
//

import SwiftUI

struct PrintCommands: Commands {
    var body: some Commands {
        CommandGroup(replacing: .printItem) {
            Section {
                Button("Print…") {
                    if let window = NSApplication.shared.mainWindow,
                       let contentView = window.contentView {
                        PrintHelper.printView(contentView)
                    }
                }
            }
        }
    }
}
