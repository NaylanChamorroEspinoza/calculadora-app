//
//  ViewController.swift
//  calculadora0
//
//  Created by Naylan on 20/01/26.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var textdato: UILabel!
    
        var num1: Double = 0
        var operacion: String = ""
    var escribiendoNumero = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textdato.text = "0"
    }

        // BOTONES NUMÉRICOS 
        @IBAction func numeroPresionado(_ sender: UIButton) {
            let numero = String(sender.tag)

            if escribiendoNumero {
                textdato.text = textdato.text! + numero
            } else {
                textdato.text = numero
                escribiendoNumero = true
            }
        }
        //  SUMA
        @IBAction func suma(_ sender: UIButton) {
            num1 = Double(textdato.text!) ?? 0
            operacion = "+"
            escribiendoNumero = false
        }

        // RESTA
        @IBAction func resta(_ sender: UIButton) {
            num1 = Double(textdato.text!) ?? 0
            operacion = "-"
            escribiendoNumero = false
        }

        // MULTIPLICACIÓN
        @IBAction func multiplicar(_ sender: UIButton) {
            num1 = Double(textdato.text!) ?? 0
            operacion = "*"
            escribiendoNumero = false
        }

        // DIVISIÓN
        @IBAction func dividir(_ sender: UIButton) {
            num1 = Double(textdato.text!) ?? 0
            operacion = "/"
            escribiendoNumero = false
        }
    @IBAction func porcentaje(_ sender: UIButton) {
        let valor = Double(textdato.text!) ?? 0

        let porcentaje = valor / 100
        textdato.text = String(porcentaje)
        escribiendoNumero = false
    }


        //RESULTADO
        @IBAction func igual(_ sender: UIButton) {
            let num2 = Double(textdato.text!) ?? 0
            var resultado: Double = 0

            if operacion == "/" && num2 == 0 {
                textdato.text = "Error"
                escribiendoNumero = false
                return
            }

            switch operacion {
            case "+":
                resultado = num1 + num2
            case "-":
                resultado = num1 - num2
            case "*":
                resultado = num1 * num2
            case "/":
                resultado = num1 / num2
            default:
                break
            }

            textdato.text = String(resultado)
            escribiendoNumero = false
        }


        //  LIMPIAR
        @IBAction func limpiar(_ sender: UIButton) {
            textdato.text = "0"
            num1 = 0
            operacion = ""
        }
    }
