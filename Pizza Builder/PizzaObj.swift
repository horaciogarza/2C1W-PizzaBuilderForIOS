//
//  PizzaObj.swift
//  Pizza Builder
//
//  Created by Horacio Garza on 28/04/16.
//  Copyright © 2016 Horacio Garza. All rights reserved.




/*Seleccionar el tamaño de la pizza: chica, mediana, grande
 
 Seleccionar el tipo de masa: delgada, crujiente, gruesa
 
 Seleccionar el tipo de queso: mozarela, cheddar, parmesano, sin queso
 
 Seleccionar de uno a cinco ingredientes: jamón, pepperoni, pavo, salchicha, aceituna, cebolla, pimiento, piña, anchoa, etc. */


import Foundation


enum Masa{
    case delgada;
    case crujiente;
    case gruesa
}

enum Queso{
    case mozarella
    case cheddar
    case parmesano
    case sinQueso
}

enum Tamaño{
    case chica
    case mediana
    case grande
}


struct Direccion{
    
    var numero:Int?
    var calle:String?
    var colonia:String?
    var numeroTelefonico:String?
    
    init(){
        self.numero = 0
        self.calle = ""
        self.colonia = ""
        self.numeroTelefonico = ""
    }
}


public class Pizza{
   
    static var sharedPizza:Pizza = Pizza()
    
    
    var queso:Queso?
    var tamaño:Tamaño?
    var masa:Masa?
    var direccion:Direccion?
    
    
    var ingredientesDisponibles:NSMutableDictionary = ["jamon": true, "peperonni": false, "pavo": false,
                                                      "salchicha": false, "aceituna": false, "cebolla": false,
                                                      "pimiento": false, "piña": false, "anchoa": false]
    

    var ingredientes:Array<String>?
    
    
    init(){
        
    }
    
    func checkIfComplete() -> Bool{
        guard self.ingredientes == nil && self.masa == nil && self.queso == nil && self.tamaño == nil && self.direccion == nil else {
            // Value requirements not met, do something
            return true
        }
        
        return false;
    }
    
    
}




