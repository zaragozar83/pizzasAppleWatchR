//
//  tampizzaInterfaceController.swift
//  PizzaAppleWatch
//
//  Created by Ricardo Zaragoza Solís on 09/03/16.
//  Copyright © 2016 Ricardo Zaragoza Solís. All rights reserved.
//

import WatchKit
import Foundation


class tampizzaInterfaceController: WKInterfaceController {

    @IBOutlet var picker: WKInterfacePicker!
    
    var pizza = pizzza()
    let tamanos = ["Chica", "Mediana", "Grande"]
    var tamSeleccion = ""
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        var tamanosPizza = [WKPickerItem]()
        
        for i in tamanos {
            let item = WKPickerItem()
            item.title = i
           
            tamanosPizza.append(item)
        }
        
        picker.setItems(tamanosPizza)
        
        switch tamSeleccion {
        case "Chica":
            picker.setSelectedItemIndex(0)
            
        case "Mediana":
            picker.setSelectedItemIndex(1)
            
        case "Grande":
            picker.setSelectedItemIndex(2)
            
        default:
            picker.setSelectedItemIndex(tamanosPizza.count - 2)
        }

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
    
    
    @IBAction func pickercambio(value: Int) {
        switch value {
        case 0: pizza.tamSeleccion = "Chica"
        case 1: pizza.tamSeleccion = "Mediana"
        case 2: pizza.tamSeleccion = "Grande"
        default:
            return
        }
        
    }
    
    @IBAction func guardart() {
        let valtam = pizza
        pushControllerWithName("MasaID", context: valtam)
    }

}
