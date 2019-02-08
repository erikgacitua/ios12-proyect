//
//  ViewController.swift
//  01-iamrich
//
//  Created by Erik Felipe Gacitua Arenas on 2/5/19.
//  Copyright © 2019 Erik Felipe Gacitua Arenas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //PROPERTYS
    @IBOutlet weak var LabelTitle: UILabel! //Referencia al label titulo
    @IBOutlet weak var ImageDiamond: UIImageView! //Referencia a la imagen
    @IBOutlet weak var ButtonRich: UIButton! //Referencia al botón
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Hola que tal!")
    }

    //METHODS
    //Funcion botón acción al presionar
    @IBAction func ButtonPressed(_ sender: UIButton) {
    //print("Pulsame y seras rico!")
    //self.LabelTitle.text = "He pulsado el botón!"//Al presionar el botón, cambia el label(Title)
    //self.LabelTitle.textColor = UIColor.green //Cambia el color del texto
    //self.LabelTitle.font = UIFont.systemFont(ofSize: 24.0)//Cambia el tamaño de letra del titulo
    //self.ImageDiamond.image = UIImage(named: "232-2322394_diamond-outline-transparent-background-cliparts-real-estate-as-a-career")//Cambia imagen por otra imagen
    
    //Código para mostrar alerta o mensaje en iphone
    let controller = UIAlertController(title: "I am Rich", message: """
                                                I am a rich,
                                                I deserve it.
                                                I am good,
                                                healthy and successfull
                                                """, preferredStyle: .actionSheet)//puede ser alert o actionsheet
        
        //Codigo que agrega a la alerta o mensaje un botón Ok (Para cerrar el mensaje o alerta)
        //let action = UIAlertAction(title: "Aceptar", style: .default, handler: nil)
        
        //Ejemplo para asociar una acción al botón acepta
        let action = UIAlertAction(title: "Aceptar", style: .default) { (action) in
            print("He presionado el botón Aceptar")
        }
        
        //código para agregar el botón al mensaje que esta en la variable controller
        controller.addAction(action)
        
        //let action2 = UIAlertAction(title: "Borrar", style: .destructive, handler: nil)//nil hace referencia a nullo
        let action2 = UIAlertAction(title: "Borrar", style: .destructive) { (action2) in
            print("He pulsado el botón Borrar")
        }
        controller.addAction(action2)
        
        //let action3 = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
        let action3 = UIAlertAction(title: "Cancelar", style: .cancel) { (action3) in
            print("He pulsado el botón cancelar")
        }
        controller.addAction(action3)
        //muestra mensaje
        self.show(controller, sender: nil)
        //Cerrar mensaje
    }
    
}

