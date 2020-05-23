//
//  PostData.swift
//  MyWebApps
//
//  Created by Abhas Kumar on 5/22/20.
//  Copyright © 2020 Abhas Kumar. All rights reserved.
//

import Foundation

struct Results:Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}

