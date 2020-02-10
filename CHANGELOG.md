# CHANGELOG

The changelog for **Reborn**. Also see the [releases](https://github.com/Mobillium/Reborn/releases) on GitHub.

## Upcoming Release

### Added

- **MKMapView**:
    -  Added `zoom(to:meter:edgePadding:animated:)` method to zoom multiple `MKMapView` coordinates. by [Mustafa GUNES](https://github.com/mustafagunes).

- **EdgeInsets**:
  - Unified `UIEdgeInsets` and `NSEdgeInsets` into a single typealias, `EdgeInsets`, similar to what we do with `UIColor` and `NSColor`. For the tests to function it was required to add the static `zero` property to `NSEdgeInsets` and to make it conform to `Equatable`. by [Mustafa GUNES](https://github.com/mustafagunes).