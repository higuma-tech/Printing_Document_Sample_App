//
//  ContentView.swift
//  Printing Document Sample App
//
//  Created by Masamichi Ebata on 2024/07/11.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: Printing_Document_Sample_AppDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

#Preview {
    ContentView(document: .constant(Printing_Document_Sample_AppDocument()))
}
