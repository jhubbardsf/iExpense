//
//  ContentView.swift
//  iExpense
//
//  Created by Josh Hubbard on 1/26/20.
//  Copyright © 2020 YeetBox. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    @State private var showingSheet = false

    var body: some View {
        Button("Show Sheet") {
            self.showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView(name: "@twostraws")
        }
    }
}

struct SecondView: View {
    var name: String
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            Text("Hello, \(name)!")
            Button("Dismiss") {
                self.presentationMode.wrappedValue.dismiss()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
