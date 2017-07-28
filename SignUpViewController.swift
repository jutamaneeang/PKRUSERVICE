//
//  SignUpViewController.swift
//  PKRUService
//
//  Created by 422Mac01 on 28/7/60.
//  Copyright © พ.ศ. 2560 jane. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    //Implicit
    let strBlankAlert = "Please Fill All Every Blank"
    let strFontPHP = "http://androidthai.in.th/pkru/addDatajane.php?isAdd=true&Name="
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var alertLavel: UILabel!
    
    @IBAction func saveButton(_ sender: Any) {
        
        let strName: String = nameTextField.text!
        let strUser: String = userTextField.text!
        let strPassword: String = passwordTextField.text!
        
        
        print("strName ==> \(strName)")
        print("strUser ==>\(strUser)")
        print("strPassword ==> \(strPassword)")
        
        
        //check Space
        if (strName == "") || (strUser == "") || (strPassword == "") {
            //Have Space
        alertLavel.text = strBlankAlert
        }else{
            //No Space
            uploadToServer(strName: strName, strUser: strUser, strPassword: strPassword)
            alertLavel.text = ""
        }
        
    } //saveButton
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    } //viewDidLoad
    
    func uploadToServer(strName: String, strUser: String, strPassword: String) -> Void {
    
        let strPHP: String = strFontPHP + "\(strName)&User=\(strUser)&Password=\(strPassword)"
        print("strPHP ==> \(strPHP)")
        
        
    } //uploadToServer
    
    
    
    
    
    
     override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
