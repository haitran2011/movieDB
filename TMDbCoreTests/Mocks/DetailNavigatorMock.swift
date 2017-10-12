//
//  DetailNavigatorMock.swift
//  TMDbCoreTests
//
//  Created by Manuel Colmenero Navarro on 8/10/17.
//  Copyright © 2017 Guille Gonzalez. All rights reserved.
//

@testable import TMDbCore

// Clase Mock para poder hacer pruebas
final class DetailNavigatorMock: DetailNavigator {
    private(set) var showDetailCalled     = false
    private(set) var showDetailParameters : (Int64, MediaType)?
    
    func showDetail(withIdentifier identifier: Int64, mediaType: MediaType) {
        showDetailCalled     = true
        showDetailParameters = (identifier, mediaType)
    }
}
