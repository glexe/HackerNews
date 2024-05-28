//
//  PostData.swift
//  HackerNews
//
//  Created by Ilya Gladyshev on 5/25/24.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable, Hashable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
