//
//  ViewController.swift
//  SwiftNotificationObserver
//
//  Created by Sudipto Roy on 2/4/20.
//  Copyright © 2020 Code-X Systems. All rights reserved.
//

import UIKit

let textSubmitNotification = "com.codexsys.text"

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    let text = Notification.Name(rawValue: textSubmitNotification)
    
    // Removing observeres
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        createObservers()
    }

    @IBAction func submitButtonTapped(_ sender: Any) {
        let TextVC = storyboard?.instantiateViewController(withIdentifier: "textViewController") as! TextViewController
        present(TextVC, animated: true, completion: nil)
    }
    
    // function for creating observer
    func createObservers () {
        // textSubmitted observer
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.updateTextLabel(notification:)), name: text, object: nil)
    }
    
    // Show Text in texLabel
    @objc func updateTextLabel (notification: NSNotification) {
        let isText = notification.name == text
        if isText {
            let getText = notification.object
            print(getText as! Dictionary<String, String>)
            let showText = getText as! Dictionary<String, String>
            textLabel.text = showText["name"]
        }
    }
}

