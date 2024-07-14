//
//  PrintHelper.swift
//  Printing Document Sample App
//
//  Created by Masamichi Ebata on 2024/07/12.
//
import AppKit

class PrintHelper {
    static func printView(_ view: NSView) {
        let printInfo = NSPrintInfo.shared
        printInfo.horizontalPagination = .automatic
        printInfo.verticalPagination = .automatic
        printInfo.isVerticallyCentered = false

        let printOperation = NSPrintOperation(view: view, printInfo: printInfo)
        printOperation.showsPrintPanel = true
        printOperation.showsProgressPanel = true

        printOperation.run()
    }
}
