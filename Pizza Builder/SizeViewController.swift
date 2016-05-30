//
//  SizeViewController.swift
//  Pizza Builder
//
//  Created by Horacio Garza on 29/05/16.
//  Copyright © 2016 Horacio Garza. All rights reserved.
//

import UIKit



class SizeViewController: UIViewController {

    
    @IBOutlet weak var smallSize: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func setMediumSize(sender: AnyObject) {
        Pizza.sharedPizza.tamaño = .chica
    }
    
    @IBAction func setSmallPizzaSize(sender: AnyObject) {
        Pizza.sharedPizza.tamaño = .mediana
    }
    @IBAction func setBigSize(sender: AnyObject) {
        Pizza.sharedPizza.tamaño = .grande
    }
}
