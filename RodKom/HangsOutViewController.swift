//
//  HangsOutViewController.swift
//  RodKom
//
//  Created by Administrator on 24.02.17.
//  Copyright © 2017 Administrator. All rights reserved.
//

import Foundation
import UIKit
import MapKit
import CoreLocation

class HangsOutViewController : UIViewController, MKMapViewDelegate, CLLocationManagerDelegate, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var eventsTableView: UITableView!
    
    let arr = ["First", "Second", "Third", "Fourth", "Fifth", "Six", "Seventh"]
    
 
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        
        self.locationManager.delegate = self
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.startUpdatingLocation()
        self.mapView.showsUserLocation = true
        
        
        
    }
    
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let location = locations.last
        
        let center = CLLocationCoordinate2D(latitude: location!.coordinate.latitude, longitude: location!.coordinate.longitude)
        
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03))
        
      self.mapView.setRegion(region, animated: true)
        
//      self.locationManager.stopUpdatingLocation()
        
        
    }
    
    
    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        
        print("Errors: " + error.localizedDescription)
        
    }

   
    
    
    
//    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        return 1
//    }
   
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arr.count
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let tableCell = eventsTableView.dequeueReusableCellWithIdentifier("eventsCell", forIndexPath: indexPath) as! EventsTableCell
        
        tableCell.eventLabel.text = arr[indexPath.row]
        
        tableCell.eventIconView.setRounded()
        
        return tableCell
    }

}




extension UIImageView {
    
    func setRounded() {
        let radius = CGRectGetWidth(self.frame) / 2
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
        self.layer.backgroundColor = UIColor.whiteColor().CGColor
    }
}
