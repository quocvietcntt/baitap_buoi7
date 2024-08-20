//
//  ViewController.swift
//  baitap2
//
//  Created by apple on 2024/08/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtpass: UITextField!
    @IBOutlet weak var txtten: UITextField!
    var ten,pass:String!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func xuly_dangnhap(_ sender: Any) {
        ten = txtten.text!
        pass = txtpass.text!
        if ten.isEmpty && pass.isEmpty{
            print("ban chua nhap username va password")
        }
        else if ten.isEmpty {
            print("ban chua nhap username")
        }
        else if pass.isEmpty{
            print("ban chua nhap password")
        }
        else{
            print("username:\(txtten.text!)")
            print("password:\(txtpass.text!)")
        }
        
    }
    
    @IBAction func xuly_dangki(_ sender: Any) {
        
        let alert = UIAlertController(title: "Register Account", message: "you want to register?", preferredStyle: UIAlertController.Style.alert)
        let nutcancal = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil)
        let nutok = UIAlertAction(title: "OK", style: UIAlertAction.Style.destructive) { vv in
            let st = UIStoryboard(name: "Main", bundle: nil)
            let manhinh = st.instantiateViewController(withIdentifier: "cell") as! cellViewController
            self.navigationController?.pushViewController(manhinh, animated: true)
        }
        alert.addAction(nutcancal)
        alert.addAction(nutok)
        present(alert, animated: true, completion: nil)
        
        
    }
}
