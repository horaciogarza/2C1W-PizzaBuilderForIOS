//
//  PizzaObj.swift
//  Pizza Builder
//
//  Created by Horacio Garza on 28/04/16.
//  Copyright © 2016 Horacio Garza. All rights reserved.
//

import Foundation

public class 🍕{
   
    static var sharedPizza:🍕 = 🍕()
    
    
    var cTamaño: String?
    var cMasa:String?
    var cIngredientes: [String]?
    var cQueso: String?
    
    var ingredientes:[String]?{
        get{
            return self.cIngredientes!
        }
        set(ingredientes){
            self.cIngredientes = ingredientes;
        }
    }

    var queso:String?{
        get{
            return self.cQueso!
        }
        set(queso){
            self.cQueso = queso;
        }
    }

    
    var masa:String?{
        get{
            return self.cMasa!
        }
        set(masa){
            self.cMasa = masa
        }
    }

    var tamaño:String?{
        get{
            return self.cTamaño!
        }
        set(tamaño){
            self.cTamaño = tamaño;
        }
    }
    
    init(){
        
        self.cIngredientes = nil;
        self.cMasa = nil;
        self.cQueso = nil;
        self.cTamaño = nil;
    }
    
    
}