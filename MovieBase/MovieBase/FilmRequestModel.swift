// FilmRequestModel.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// FilmRequestModel-
struct FilmRequestModel: Decodable {
    var page: Int?
    var results: [Film]?
}

/// Film-
struct Film: Decodable {
    var posterPath: String?
    var overview: String?
    var originalTitle: String?
}
