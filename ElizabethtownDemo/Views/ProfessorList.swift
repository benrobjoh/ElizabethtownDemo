//
//  ProfessorList.swift
//  ElizabethtownDemo
//
//  Created by Ben Johnson on 11/17/19.
//  Copyright © 2019 Ben Johnson. All rights reserved.
//

import SwiftUI

struct ProfessorList: View {
    let professors = try! JSONLoader
        .loadData([Professor].self, from: "Professors")

    var body: some View {
        List {
            ForEach(professors) { professor in
                ProfessorRow(professor: professor)
            }
        }
        .navigationBarTitle("Professors")
    }
}

struct ProfessorList_Previews: PreviewProvider {
    static var previews: some View {
        ProfessorList()
    }
}
