- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
  // Test the validity of location.
  if (newLocation == nil) return;
  if (!CLLocationCoordinate2DIsValid(newLocation.coordinate)) return;

  // Test that the horizontal accuracy does not indicate an invalid measurement.
  if (newLocation.horizontalAccuracy < 0) return;

  // Test that the vertical accuracy does not indicate an invalid measurement.
  if (newLocation.verticalAccuracy < 0) return;

  // Test the age of the location measurement to determine if the measurement is cached
  // in most cases you will not want to rely on cached measurements.
  NSTimeInterval locationAge = -[newLocation.timestamp timeIntervalSinceNow];
  if (locationAge > 15.0) return;

  // Do something with valid location

}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
  for (CLLocation *location in locations) {
    // Test the validity of location.
    if (location == nil) continue;
    if (!CLLocationCoordinate2DIsValid(location.coordinate)) continue;

    // Test that the horizontal accuracy does not indicate an invalid measurement.
    if (location.horizontalAccuracy < 0) continue;

    // Test that the vertical accuracy does not indicate an invalid measurement.
    if (location.verticalAccuracy < 0) continue;

    // Test the age of the location measurement to determine if the measurement is cached
    // in most cases you will not want to rely on cached measurements.
    NSTimeInterval locationAge = -[location.timestamp timeIntervalSinceNow];
    if (locationAge > 15.0) continue;

    // Do something with valid location

  }
}
