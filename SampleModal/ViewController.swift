//
//  ViewController.swift
//  SampleModal
//
//  Created by aonuma.kazuhiro on 2019/06/21.
//  Copyright © 2019 aonuma.kazuhiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedModal(_ sender: Any) {
        let storyboard: UIStoryboard = self.storyboard!
        let modalViewController = storyboard.instantiateViewController(withIdentifier: "ModalViewController") as! ModalViewController
        let navigationController = UINavigationController(rootViewController: modalViewController)
        self.present(navigationController, animated: true, completion: nil)
    }
    
}

