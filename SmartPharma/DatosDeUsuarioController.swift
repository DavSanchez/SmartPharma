//
//  DatosDeUsuarioController.swift
//  SmartPharma
//
//  Created by David on 18/11/2016.
//  Copyright © 2016 David. All rights reserved.
//

import UIKit

class DatosDeUsuarioController {
    
    var listaDeUsuarios = [DatosDeUsuario]();
    
    init() {
        iniciarListaDeUsuarios()
    }
    
    func numeroDeUsuarios() -> Int {
        return listaDeUsuarios.count
    }
    
    func obtenerUsuario(indice: Int) -> DatosDeUsuario? {
        let numElementos = listaDeUsuarios.count
        if (indice < numElementos) {
            return listaDeUsuarios[indice]
        }
        return nil
    }
    
    func agregarContacto(dato: DatosDeUsuario){
        listaDeUsuarios.append(dato)
    }
    
    private func iniciarListaDeUsuarios(){
        
        let dato = DatosDeUsuario(nombre: "David Sánchez López-Trejo", dni: "47474747X", direccion: "Mi casa", telefono: "928474747")
                let dato2 = DatosDeUsuario(nombre: "Un señor mayor", dni: "00000000K", direccion: "Su casa", telefono: "928000001")
                let dato3 = DatosDeUsuario(nombre: "Una señora mayor", dni: "00000000A", direccion: "Su casa también", telefono: "928000002")
                let dato4 = DatosDeUsuario(nombre: "Un niño pequeño", dni: "N/A", direccion: "La casa del señor mayor", telefono: "928000003")
        
        agregarContacto(dato)
        agregarContacto(dato2)
        agregarContacto(dato3)
        agregarContacto(dato4)
    }
}
