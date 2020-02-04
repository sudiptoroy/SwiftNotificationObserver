//
//  TextViewController.swift
//  SwiftNotificationObserver
//
//  Created by Sudipto Roy on 2/4/20.
//  Copyright © 2020 Code-X Systems. All rights reserved.
//

import UIKit

class TextViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    // dictionary for sending data
    var dataToSend = ["name" : ""] as [String : String]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        let name = Notification.Name(rawValue: textSubmitNotification)
        dataToSend["name"] = textField.text
        NotificationCenter.default.post(name: name, object: dataToSend)
        dismiss(animated: true, completion: nil)
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
