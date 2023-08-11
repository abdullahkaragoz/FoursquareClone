//
//  ViewController.swift
//  FoursquareClone
//
//  Created by Abdullah Karagöz on 11.08.2023.
//

import UIKit
import Parse

class SignUpVC: UIViewController {
    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
    }
    
    @IBAction func signInClicked(_ sender: Any) {
    
        if userNameText.text != "" && passwordText.text != "" {
            
            PFUser.logInWithUsername(inBackground: userNameText.text!, password: passwordText.text!) { user, error in
                if error != nil {
                    self.makeAlert(titleInput: "Error", MessageInput: error?.localizedDescription ?? "Error")
                } else {
                    self.performSegue(withIdentifier: "toPlacesVC", sender: nil)
                }
            }
            
        } else {
            makeAlert(titleInput: "Error", MessageInput: "username / password??")
        }
        
    }
    
    @IBAction func SıgnUpClicked(_ sender: Any) {
        
        if userNameText.text != "" && passwordText.text != "" {
            let user = PFUser()
            user.username = userNameText.text!
            user.password = passwordText.text!
            
            user.signUpInBackground { ( succes, error) in
                if error != nil {
                    self.makeAlert(titleInput: "Error", MessageInput: error?.localizedDescription ?? "Error!!")
                } else {
                    //segue
                    self.performSegue(withIdentifier: "toPlacesVC", sender: nil)                }
                
            }
            
            
        } else {
            makeAlert(titleInput: "Error", MessageInput: "username / password??")
        }
       
    }
    
    func makeAlert(titleInput: String, MessageInput: String){
        let alert = UIAlertController(title: titleInput, message: MessageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
    }
    
}
