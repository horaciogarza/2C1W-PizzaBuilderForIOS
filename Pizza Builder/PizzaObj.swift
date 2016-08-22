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
import UIKit


enum Masa: String{
    case delgada = "Delgada";
    case crujiente = "Crujiente";
    case gruesa = "Gruesa"
}

enum Queso:String{
    case mozarella = "Mozarella"
    case cheddar = "Cheddar"
    case parmesano = "Parmesano"
    case sinQueso = "Sin Queso"
}

enum Tamaño: String{
    case chica = "Chica"
    case mediana = "Mediana"
    case grande = "Grande"
}

enum form: ErrorType{
    case Empty
    case Short
    case Complete
}

struct Direccion{
    
    var numeroExterior:Int?
    var calle:String?
    var colonia:String?
    var numeroTelefonico:String?
    var completeForm:Bool = false;
    
    init(){
        self.numeroExterior = 0
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
    
    
    var ingredientesDisponibles = ["jamon": false, "peperonni": false, "pavo": false,
                                                      "salchicha": false, "aceituna": false, "cebolla": false,
                                                      "pimiento": false, "piña": false, "anchoa": false]
    var ingredientes:Array<String>?
    
    init(){
        
    }
    
    
    func getIngredients() -> [String]{
        var ingredientes = [String]()
        
        for name in ingredientesDisponibles.keys {
            if (ingredientesDisponibles[name] == true) {
                ingredientes.append(name)
            }
        }
        
        return ingredientes
    }
    /**
     Function that returns the values of the Pizza that will be ordered and Adress
     
     - returns: (pizzaValues, adressValues)
     */
    func pizzaToString() -> (NSDictionary, NSDictionary) {
        
        let pizzaValues:NSMutableDictionary = NSMutableDictionary()
        let adressValues:NSMutableDictionary = NSMutableDictionary()
        
        //Pizza Values
        pizzaValues["Queso"] = String(self.queso?.rawValue)
        pizzaValues["Tamaño"] = String(self.tamaño?.rawValue)
        pizzaValues["Masa"] = String(self.masa?.rawValue)
        
        
        //Adress Values
        adressValues["Calle"] = String(self.direccion?.calle!)
        adressValues["Numero Exterior"] = String(self.direccion?.numeroExterior!)
        adressValues["Colonia"] = String(self.direccion?.colonia!)
        adressValues["Numero de Telefono"] = String(self.direccion?.numeroTelefonico!)
        
        return (pizzaValues as NSDictionary, adressValues as NSDictionary)
    }
    
    
    
    func checkIfComplete() -> Bool{
        guard self.ingredientes == nil && self.masa == nil && self.queso == nil && self.tamaño == nil && self.direccion == nil else {
            // Value requirements not met, do something
            return true
        }
        
        return false;
    }
    
    
    
    
    
    
}




