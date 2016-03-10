//
//  confirmarInterfaceController.swift
//  PizzaAppleWatch
//
//  Created by Ricardo Zaragoza Solís on 09/03/16.
//  Copyright © 2016 Ricardo Zaragoza Solís. All rights reserved.
//

import WatchKit
import Foundation


class confirmarInterfaceController: WKInterfaceController {
    var pizza = pizzza()
    var ingredientesEscogidos = [String]()
    
    
    @IBOutlet var etiquetadetamano: WKInterfaceLabel!
    
    @IBOutlet var etiquetademasa: WKInterfaceLabel!
    
    @IBOutlet var etiquetadequeso: WKInterfaceLabel!
    
    @IBOutlet var etiquetadeingredientes: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let context = context as! pizzza
        pizza = context
        
       etiquetadetamano.setText(pizza.tamSeleccion)
        etiquetademasa.setText(pizza.tipoDeMasa)
        etiquetadequeso.setText(pizza.tipoDeQueso)
        
        
        for (ingrediente, seleccion) in pizza.ingredientes {
            if seleccion == true {
               
                ingredientesEscogidos.append(ingrediente)
            }
        }
        
        etiquetadeingredientes.setText(String(ingredientesEscogidos.joinWithSeparator(" - ")))
        
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func modificarlaorden() {
        let valeditar = pizza
        pushControllerWithName("TamanoID", context: valeditar)
        
    }
    
    @IBAction func confirmarlaorden() {
        
        let valConfirmar = pizza
        pushControllerWithName("ConfirmacionCompletaID", context: valConfirmar)
    }
    

}
