//
//  LoginViewController.swift
//  Floutify
//
//  Created by user185203 on 1/7/21.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txtLogin: UITextField!
    @IBOutlet weak var txtPwd: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnConnect(_ sender: Any) {
        if(txtLogin.text == "" && txtPwd.text == "")
        {
            print("connected")
            
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "artist") as! ArtistViewController
            nextViewController.modalPresentationStyle = .fullScreen
            nextViewController.data = "toto"
            self.present(nextViewController, animated:true, completion:nil)
        }

    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
