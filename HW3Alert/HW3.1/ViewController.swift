import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var sumLabel: UILabel!
    @IBOutlet weak var guessLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        alertName(title: "Enter your name", message: "", style: .alert)
    }
    
    //MARK: - Name
    
    func alertName(title: String, message: String, style: UIAlertController.Style) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "Ok", style: .default) { (action) in
            
            let text = alert.textFields?.first
            
            self.helloLabel.text! = "Hello, " + (text?.text ?? "")! + "!"
            self.helloLabel.sizeToFit()
        }
        
        alert.addTextField(configurationHandler: nil)
        alert.addAction(action)
        
        self.present(alert, animated: true, completion: nil)
    }
    
    
    //MARK: - Addition
    @IBAction func additionButton(_ sender: Any) {
        
        self.alert(title: "Enter two numbers", message: "", style: .alert)
    }
    
    
    func alert(title: String, message: String, style: UIAlertController.Style) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "Ok", style: .default) { (action) in
            
            let firstNumber = alert.textFields?.first
            let secondNumber = alert.textFields?[1]
            
            self.sumLabel.text! = String(Int(firstNumber?.text ?? "0")! + Int(secondNumber?.text ?? "0")!)
            self.sumLabel.sizeToFit()
        
        }
        
        alert.addTextField(configurationHandler: nil)
        alert.addTextField(configurationHandler: nil)
        alert.addAction(action)
        
        self.present(alert, animated: true, completion: nil)
    }
    
    //MARK: - GuessGame
    @IBAction func guessButton(_ sender: Any) {
        
        self.alertGuess(title: "Multiply it by 5, then add the picked number", message: "Enter the final result", style: .alert)
    }
    
    
    func alertGuess(title: String, message: String, style: UIAlertController.Style) {
            
        let alertGuess = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "Ok", style: .default) { (action) in
            
            let text = alertGuess.textFields?.first
            
            self.guessLabel.text! = String(Int(text?.text ?? "0")! / 6)
            self.guessLabel.sizeToFit()
        }
            
        alertGuess.addAction(action)
        alertGuess.addTextField(configurationHandler: nil)
            
        self.present(alertGuess, animated: true, completion: nil)
    }
    

}

