//
//  ModalViewController.swift
//  SampleModal
//
//  Created by aonuma.kazuhiro on 2019/06/21.
//  Copyright © 2019 aonuma.kazuhiro. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController, UIAdaptivePresentationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 閉じるボタン追加
        let closeBarButtonItem = UIBarButtonItem(barButtonSystemItem: .stop, target: self, action: #selector(ModalViewController.close))
        self.navigationItem.leftBarButtonItem = closeBarButtonItem
        
        self.navigationController?.presentationController?.delegate = self
        self.isModalInPresentation = true
    }
    
    @objc
    func close() {
        self.dismiss(animated: true, completion: nil)
    }
    
    func presentationControllerDidAttemptToDismiss(_ presentationController: UIPresentationController) {
        
        print("presentationControllerDidAttemptToDismiss")
        
        let alert = UIAlertController(title: "", message: "閉じますか？", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default) { _ in
            self.dismiss(animated: true, completion: nil)
        })
        alert.addAction(UIAlertAction(title: "キャンセル", style: .cancel))
        present(alert, animated: true, completion: nil)
    }
    
    func presentationControllerShouldDismiss(_ presentationController: UIPresentationController) -> Bool {
        return true
    }
    
    func presentationControllerWillDismiss(_ presentationController: UIPresentationController) {
        print("presentationControllerWillDismiss ")
    }
    
    func presentationControllerDidDismiss(_ presentationController: UIPresentationController) {
        print("presentationControllerDidDismiss")
    }
}
