//
//  ingredientessInterfaceController.swift
//  PizzaAppleWatch
//
//  Created by Ricardo Zaragoza Solís on 09/03/16.
//  Copyright © 2016 Ricardo Zaragoza Solís. All rights reserved.
//

import WatchKit
import Foundation


class ingredientessInterfaceController: WKInterfaceController {

    var pizza = pizzza()
    var ingredientes = [
        "Pavo": true,
        "Jamón": false,
        "Pepperoni": false,
        "Salchicha": false,
        "Aceituna": false,
        "Cebolla": false,
        "Anchoa": false ]
        
    
        
        

    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let context = context as! pizzza
        pizza = context
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func pavoelegido(value: Bool) {
         pizza.ingredientes["Pavo"] = value
       
    }
    
    @IBAction func jamonelegido(value: Bool) {
         pizza.ingredientes["Jamón"] = value
    }
    
    @IBAction func pepperonielegido(value: Bool) {
         pizza.ingredientes["Pepperoni"] = value
    }
    
    @IBAction func salchichaelegida(value: Bool) {
         pizza.ingredientes["Salchicha"] = value
    }
    
    @IBAction func aceitunalegida(value: Bool) {
         pizza.ingredientes["Aceituna"] = value
    }
    
    @IBAction func cebollaelegida(value: Bool) {
         pizza.ingredientes["Cebolla"] = value
    }

    @IBAction func anchoaelegida(value: Bool) {
         pizza.ingredientes["Anchoa"] = value
    }
    
    @IBAction func guardaringredientes() {
        let valingrediente = pizza
        pushControllerWithName("ConfirmarID", context: valingrediente)
    }
}
