//
//  JSONLoader.swift
//  ElizabethtownDemo
//
//  Created by Ben Johnson on 11/17/19.
//  Copyright © 2019 Ben Johnson. All rights reserved.
//

import Foundation

struct JSONLoader {
    static func loadData<T: Decodable>(_ type: T.Type,
                                       from jsonResource: String,
                                       in bundle: Bundle = .main) throws -> T {
        guard let url = bundle.url(forResource: jsonResource, withExtension: "json")
            else { throw URLError(.fileDoesNotExist) }
        let data = try Data(contentsOf: url)
        return try JSONDecoder().decode(T.self, from: data)
    }
}
