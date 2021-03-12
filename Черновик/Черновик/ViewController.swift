//
//  ViewController.swift
//  Черновик
//
//  Created by Peter K on 10.03.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func additionButton(_ sender: Any) {
        
        self.alert(title: "Enter two numbers", message: "", style: .alert)
        
        }
    func alert(title: String, message: String, style: UIAlertController.Style) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addTextField(configurationHandler: nil)
        alert.addTextField(configurationHandler: nil)
        alert.addAction(action)
        
        self.present(alert, animated: true, completion: nil)
    }
    

}
