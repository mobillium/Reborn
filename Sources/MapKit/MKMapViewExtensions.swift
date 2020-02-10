//
//  MKMapViewExtensions.swift
//  Reborn
//
//  Created by Mustafa GUNES on 10.02.2020.
//  Copyright © 2020 Mustafa GUNES. All rights reserved.
//

#if canImport(MapKit)
import MapKit

#if !os(watchOS)
@available(tvOS 9.2, *)
public extension MKMapView {

    /// Zooms in on multiple mapView coordinates.
    ///
    /// - Parameters:
    ///   - coordinates: Gets the array of type CLLocationCoordinate2D.
    ///   - meter: If arrays have a single item, they take the value of meters (Double). The map zooms in at the given meters.
    ///   - edgePadding: The amount of additional space (measured in screen points) to make visible around the specified rectangle
    ///   - animated: The animation control takes the Boolean value. Enter the true value for zooming with the animation.
    func zoom(to coordinates: [CLLocationCoordinate2D], meter: Double, edgePadding: EdgeInsets, animated: Bool) {
        guard !coordinates.isEmpty else { return }

        if coordinates.count == 1 {
            let coordinateRegion = MKCoordinateRegion(center: coordinates.first!, latitudinalMeters: meter, longitudinalMeters: meter)
            setRegion(coordinateRegion, animated: true)
        } else {
            let mkPolygon = MKPolygon(coordinates: coordinates, count: coordinates.count)
            setVisibleMapRect(mkPolygon.boundingMapRect, edgePadding: edgePadding, animated: animated)
        }
    }
}

#endif

#endif

