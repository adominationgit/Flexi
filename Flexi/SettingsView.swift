//
//  SettingsView.swift
//  Flexi
//
//  Created by Dominic Snyder on 12/27/22.
//

import SwiftUI
import CoreData

struct SettingsView: View {
    @Binding var showSheetView: Bool
    
    var body: some View {
        NavigationView {
            Text("Settings Coming Soon!")
                .navigationTitle("Settings")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            self.showSheetView = false
                        }) {
                            Text("Done").bold()
                        }
                    }
                }
        }
        .navigationBarTitleDisplayMode(/*@START_MENU_TOKEN@*/.inline/*@END_MENU_TOKEN@*/)
    }
}
