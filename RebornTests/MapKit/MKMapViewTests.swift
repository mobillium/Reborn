//
//  MKMapViewTests.swift
//  Reborn
//
//  Created by Mustafa GUNES on 10.02.2020.
//  Copyright © 2020 Mustafa GUNES. All rights reserved.
//

import XCTest
@testable import Reborn

#if canImport(MapKit)
import MapKit
import struct CoreLocation.CLLocationCoordinate2D

#if !os(watchOS)
@available(tvOS 9.2, *)
final class MKMapViewTests: XCTestCase {
    
    func testWithEmptyItemArray() {
        let mapView = MKMapView()
        let meter = 500.0
        let edgePadding = EdgeInsets(top: 50, left: 50, bottom: 50, right: 50)
        let previous = mapView.visibleMapRect
        mapView.zoom(to: [], meter: meter, edgePadding: edgePadding, animated: true)

        XCTAssert(mapView.visibleMapRect.contains(previous))
    }

    func testWithOneItemArray() {
        let mapView = MKMapView()
        let meter = 500.0
        let oneItemArray = [CLLocationCoordinate2D(latitude: 36.9751, longitude: 38.4243)]
        let edgePadding = EdgeInsets(top: 50, left: 50, bottom: 50, right: 50)
        mapView.zoom(to: oneItemArray, meter: meter, edgePadding: edgePadding, animated: true)

        let firstPoint = MKMapPoint(oneItemArray.first!)
        XCTAssert(mapView.visibleMapRect.contains(firstPoint))
    }

    func testWithMultiItemArray() {
        let mapView = MKMapView()
        let meter = 500.0
        let edgePadding = EdgeInsets(top: 50, left: 50, bottom: 50, right: 50)
        let multiItemArray = [CLLocationCoordinate2D(latitude: 36.9751, longitude: 38.4243),
                              CLLocationCoordinate2D(latitude: 37.06622, longitude: 37.38332),
                              CLLocationCoordinate2D(latitude: 41.00527, longitude: 28.97696)]
        mapView.zoom(to: multiItemArray, meter: meter, edgePadding: edgePadding, animated: true)

        for location in multiItemArray {
            XCTAssert(mapView.visibleMapRect.contains(MKMapPoint(location)))
        }
    }
}

#endif

#endif
