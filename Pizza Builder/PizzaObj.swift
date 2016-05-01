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
    
    
    private var cTamaño: String?
    private var cMasa:String?
    var cIngredientes: [String]?
    private var cQueso: String?
    
    var ingredientes:[String]?{
        get{
            return self.cIngredientes
        }
        set{
            self.cIngredientes = ingredientes;
        }
    }
    
    

    var queso:String?{
        get{
            return self.cQueso
        }
        set(queso){
            self.cQueso = queso;
        }
    }

    
    var masa:String?{
        get{
            return self.cMasa
        }
        set(masa){
            self.cMasa = masa
        }
    }

    var tamaño:String?{
        get{
            return self.cTamaño
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
    
    
    public func ingredientesToString(){
        
        if cIngredientes != nil {
            for value in cIngredientes!{
                print(value)
            }
        }
        
    }
    
}