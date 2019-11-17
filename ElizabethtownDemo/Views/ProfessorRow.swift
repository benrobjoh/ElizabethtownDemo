//
//  ProfessorRow.swift
//  ElizabethtownDemo
//
//  Created by Ben Johnson on 11/17/19.
//  Copyright © 2019 Ben Johnson. All rights reserved.
//

import SwiftUI

struct ProfessorRow: View {
    @Binding var professor: Professor

    var body: some View {
        HStack {
            Image(professor.image).resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80)
                .clipShape(Circle())
                .overlay(Circle()
                .stroke(Color.accentColor, lineWidth: 4))
            VStack(alignment: .leading) {
                Text(professor.name)
                    .font(.system(.headline))
                Text(professor.title)
                    .font(.system(.subheadline))
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct ProfessorRow_Previews: PreviewProvider {
    static let professor = Professor(name: "James Hughes, Ph.D.",
                                     title: "Professor of Mathematical Sciences",
                                     image: "hughes")

    static var previews: some View {
        ProfessorRow(professor: .constant(professor))
    }
}
