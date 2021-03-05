//
//  ViewController.swift
//  HW3
//
//  Created by Peter K on 02.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hiLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addition(_ sender: Any) {
        
        self.hiLabel.text = "Hi, "
        self.alert(title: "Attention", message: "Your name", style: .alert)
        
    }
        
        func alert(title: String, message: String, style: UIAlertController.Style){
            
            let alert = UIAlertController(title: title, message: message, preferredStyle: style)
            let action = UIAlertAction(title: "Ok", style: .default) { (action) in
            
                let text = alert.textFields?.first
                self.hiLabel.text! += (text?.text!)! + ("!")
            }
        
            alert.addTextField { (textField) in
                textField.isSecureTextEntry = true
            }
            alert.addAction(action)
            
            self.present(alert, animated: true, completion: nil)

    }

}

