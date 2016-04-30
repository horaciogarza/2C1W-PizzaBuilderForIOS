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
   
    
    //Declaration of the variables in a dictionary
    private var ingredientes: [String: Bool] = ["jamon": jamon.on,"pepperoni":   pepperoni.on
        ,"pavo":   pavo.on
        ,"salchicha":   salchicha.on
        ,"cebolla":   cebolla.on
        ,"pimiento":   pimiento.on
        ,"piña":   piña.on
        ,"aceituna":   aceituna.on
        ,"anchoa":   anchoa.on
        ,"jalapeño":   jalapeño.on]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Seleccionar de uno a cinco ingredientes: jamón, pepperoni, pavo, salchicha, aceituna, cebolla, pimiento, piña, anchoa, etc.
    
  
}
