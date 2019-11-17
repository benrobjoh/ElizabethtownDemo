//
//  ContentView.swift
//  ElizabethtownDemo
//
//  Created by Ben Johnson on 11/17/19.
//  Copyright © 2019 Ben Johnson. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ProfessorList()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
