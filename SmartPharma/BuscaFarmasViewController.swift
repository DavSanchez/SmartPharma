//
//  BuscaFarmasViewController.swift
//  SmartPharma
//
//  Created by David on 14/11/2016.
//  Copyright © 2016 David. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class BuscaFarmasViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        // Es su propio delegado
        self.locationManager.delegate = self
        
        // La precisión de la ubicación es la mejor posible
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        // Solo queremos usar la ubicación mientras se use la app, no en segundo plano
        self.locationManager.requestWhenInUseAuthorization()
        
        // "Enciende" el localizador
        self.locationManager.startUpdatingLocation()
        
        // Pone la ubicación en mapView
        self.mapView.showsUserLocation = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Métodos del delegado de ubicación
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        // Coge siempre la ubicación más reciente
        let location = locations.last
        
        // Busca el centro de dicha ubicación
        let center = CLLocationCoordinate2D(latitude: location!.coordinate.latitude, longitude: location!.coordinate.longitude)
        
        // Crea la región circular en nuestra ubicación. El span es el zoom, puesto a 1 para el mayor zoom posible
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1))
        
        // Establece la región en el mapView con la animación del zoom
        self.mapView.setRegion(region, animated: true)
        
        // Una vez tiene la ubicación representada no hace falta estar actualizando
        self.locationManager.stopUpdatingLocation()
    }
    
    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        
        // Saca errores para depuración
        print("Errores: " + error.localizedDescription)
    }
    

    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
