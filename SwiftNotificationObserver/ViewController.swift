//
//  ViewController.swift
//  SwiftNotificationObserver
//
//  Created by Sudipto Roy on 2/4/20.
//  Copyright © 2020 Code-X Systems. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func submitButtonTapped(_ sender: Any) {
        let TextVC = storyboard?.instantiateViewController(withIdentifier: "textViewController") as! TextViewController
        present(TextVC, animated: true, completion: nil)
    }
    
}

