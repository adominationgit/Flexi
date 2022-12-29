//
//  ClassView1.swift
//  Flexi
//
//  Created by Dominic Snyder on 12/27/22.
//

import SwiftUI
let nextclass1 = "Advanced Band"

struct ClassView1: View {
    var body: some View {
        NavigationStack {
            NavigationLink(destination: ClassesView()) {
                GroupBox(label: Label(nextclass1, systemImage: "tray")
                    .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                    .bold()
                    .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xLarge/*@END_MENU_TOKEN@*/)
                    .labelStyle(.titleOnly)) {
                        VStack() {
                            Text("in 5 minutes")
                                .foregroundColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
                                .padding(.bottom, 5.0)
                                .frame(width: 350.0, alignment: .leading)
                            Text("Mr. Comeau in Room 1056")
                                .padding(.bottom, 10.0)
                                .frame(width: 350.0, alignment: .leading)
                            
                            Label("Tap to view all classes", systemImage: "arrowshape.turn.up.right")
                                .frame(width: 350.0, alignment: .leading)
                        }
                    }
                    .padding(.horizontal)
            }
            .accentColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ClassView1_Previews: PreviewProvider {
    static var previews: some View {
        ClassView1()
    }
}
