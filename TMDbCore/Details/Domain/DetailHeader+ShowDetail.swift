//
//  DetailHeader+ShowDetail.swift
//  TMDbCore
//
//  Created by Manuel Colmenero Navarro on 12/10/17.
//  Copyright © 2017 Guille Gonzalez. All rights reserved.
//

import Foundation

extension DetailHeader {
    init(show: ShowDetail, dateFormatter: DateFormatter) {
        title = show.title
        posterPath = show.posterPath
        backdropPath = show.backdropPath
        
        let releaseDate = show.releaseDate.flatMap { dateFormatter.date(from: $0)}
        let year = (releaseDate?.year).map { String($0) }
        let duration = "\(show.runtime) min."
        
        metadata = [year, duration].flatMap { $0 }.joined(separator: " - ")
    }
}
