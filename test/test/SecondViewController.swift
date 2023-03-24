//
//  SecondViewController.swift
//  test
//
//  Created by nanda eka on 24/03/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var tfInput: UITextField!
    @IBOutlet var tfEmail: UITextField!
    @IBOutlet var btnGenerate: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    func setupView() {
        tfInput.delegate = self
        tfEmail.delegate = self
        btnGenerate.addTarget(self, action: #selector(generate), for: .touchUpInside)
    }
    
    @objc func generate() {
        print("generate")
    }

}

extension SecondViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return true
    }
}
