//
//  IngredientsViewController.swift
//  Pizza Builder
//
//  Created by Horacio Garza on 30/04/16.
//  Copyright © 2016 Horacio Garza. All rights reserved.
//

import UIKit

class IngredientsViewController: UIViewController {
    
    //Declaration of the switches
    
    @IBOutlet weak var jamon: UISwitch!
    @IBOutlet weak var pepperoni: UISwitch!
    @IBOutlet weak var pavo: UISwitch!
    @IBOutlet weak var salchicha: UISwitch!
    @IBOutlet weak var cebolla: UISwitch!
    @IBOutlet weak var pimiento: UISwitch!
    @IBOutlet weak var piña: UISwitch!
    @IBOutlet weak var aceituna: UISwitch!
    @IBOutlet weak var anchoa: UISwitch!
    @IBOutlet weak var jalapeño: UISwitch!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        //Declaration of the variables in a dictionary
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Seleccionar de uno a cinco ingredientes: jamón, pepperoni, pavo, salchicha, aceituna, cebolla, pimiento, piña, anchoa, etc.
    @IBAction func agregaIngredientes(sender: AnyObject){
        
       var ingredientes: [String: Bool] = ["jamon": jamon.on,"pepperoni":   pepperoni.on
            ,"pavo":   pavo.on
            ,"salchicha":   salchicha.on
            ,"cebolla":   cebolla.on
            ,"pimiento":   pimiento.on
            ,"piña":   piña.on
            ,"aceituna":   aceituna.on
            ,"anchoa":   anchoa.on
        ,"jalapeño":   jalapeño.on];
        
        ingredientes["jamon"] = true;
        
        var ingredientesAInsertar:[String]? = [String]();
        
        for (key, value) in ingredientes{
            
            if value {
                ingredientesAInsertar?.append(key)
                
            }
            
        }
        
        🍕.sharedPizza.cIngredientes = ingredientesAInsertar
        
        print("masa: ", 🍕.sharedPizza.masa!,
              "Queso: ", 🍕.sharedPizza.queso!,
              "Tamaño: ", 🍕.sharedPizza.tamaño!)
        
        print("Ingredientes: ")
        
        🍕.sharedPizza.ingredientesToString();
        //Evaluation of the Selected ingredients
        
        
    }
    
  
}
