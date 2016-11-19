//
//  DatosDeUsuario.swift
//  SmartPharma
//
//  Created by David on 18/11/2016.
//  Copyright © 2016 David. All rights reserved.
//

import UIKit

class DatosDeUsuario {
    
    var nombre, dni, direccion, telefono : String
    
    //init (nombre: String, dni: String, direccion: String, telefono: String, fechaNac: NSDate){
    init (nombre: String, dni: String, direccion: String, telefono: String){
        self.nombre = nombre
        self.dni = dni
        self.direccion = direccion
        self.telefono = telefono
    }
    
}