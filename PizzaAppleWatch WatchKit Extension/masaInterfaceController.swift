//
//  masaInterfaceController.swift
//  PizzaAppleWatch
//
//  Created by Ricardo Zaragoza Solís on 09/03/16.
//  Copyright © 2016 Ricardo Zaragoza Solís. All rights reserved.
//

import WatchKit
import Foundation


class masaInterfaceController: WKInterfaceController {

    @IBOutlet var picker: WKInterfacePicker!
    
    var pizza = pizzza()
    var masas = ["Delgada", "Crujiente", "Gruesa"]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let context = context as! pizzza
        pizza = context
        
        var tipoMasa = [WKPickerItem]()
        for i in masas {
            
            let item = WKPickerItem()
            item.title = i
            
            tipoMasa.append(item)
        }
        
        picker.setItems(tipoMasa)
        picker.setSelectedItemIndex(tipoMasa.count - 2 )
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
    
    @IBAction func cambiamasa(value: Int) {
        switch value {
        case 0: pizza.tipoDeMasa = "Delgada"
        case 1: pizza.tipoDeMasa = "Crujiente"
        case 2: pizza.tipoDeMasa = "Gruesa"
        default:
        return
        }

        
    }
    
    @IBAction func guardamasa() {
        let valmas = pizza
        pushControllerWithName("QuesoID", context: valmas)
    }

}
