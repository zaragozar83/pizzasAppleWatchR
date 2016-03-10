//
//  quesoInterfaceController.swift
//  PizzaAppleWatch
//
//  Created by Ricardo Zaragoza Solís on 09/03/16.
//  Copyright © 2016 Ricardo Zaragoza Solís. All rights reserved.
//

import WatchKit
import Foundation


class quesoInterfaceController: WKInterfaceController {

    @IBOutlet var picker: WKInterfacePicker!
    var pizza = pizzza()
    var quesos = ["Mozzarella", "Parmesano", "Provolone", "Sin queso"]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let context = context as! pizzza
        pizza = context
        
        var tipoQueso = [WKPickerItem]()
        
        for i in quesos {
            let item = WKPickerItem()
            item.title = i
            
            tipoQueso.append(item)
        }
        
        picker.setItems(tipoQueso)
        picker.setSelectedItemIndex(tipoQueso.count - 2)
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func quesocambia(value: Int) {
        switch value {
        case 0: pizza.tipoDeQueso = "Mozzarella"
        case 1: pizza.tipoDeQueso = "Parmesano"
        case 2: pizza.tipoDeQueso = "Provolone"
        case 3: pizza.tipoDeQueso = "Sin queso"
        default:
        return
        }

        
        
    }
    
    @IBAction func guardaqueso() {
        let valqueso = pizza
        pushControllerWithName("IngredientesID", context: valqueso)
    }
    

}
