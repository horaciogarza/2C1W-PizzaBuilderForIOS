//
//  PizzaObj.swift
//  Pizza Builder
//
//  Created by Horacio Garza on 28/04/16.
//  Copyright © 2016 Horacio Garza. All rights reserved.
//

import Foundation

public class 🍕{
    
    var tamaño: String;
    var masa:String;
    var ingredientes: [String] = [String]()
    var queso: String
    
    init(tamaño: String, masa: String, ingredientes: [String], queso: String){
        self.ingredientes = ingredientes
        self.masa = masa
        self.queso = queso
        self.tamaño = tamaño
    }
    
    
}