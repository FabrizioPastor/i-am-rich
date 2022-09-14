//
//  ViewController.swift
//  I am Rich
//
//  Created by FABRIZIO on 13/09/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var infoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        /*Codigo que ayuda a cambiar el tamaño de un icono en un
          UIButton */
        let lageConfiguration = UIImage.SymbolConfiguration(pointSize: 40)
        
        infoButton.imageView?.image?.withConfiguration(lageConfiguration)
        
    }

    @IBAction func infoButtonPress(_ sender: UIButton) {
        let alert = UIAlertController(title: "I'am rich app", message: "You are very rich", preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
             print("Ok button tapped")
          })
        
        alert.addAction(ok)
        
        self.present(alert, animated: true, completion: nil)
    }
    
}

