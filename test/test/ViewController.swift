//
//  ViewController.swift
//  test
//
//  Created by nanda eka on 24/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var btnStart: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        btnStart.addTarget(self, action: #selector(started), for: .touchUpInside)
    }
    
    @objc func started() {
        let storyboard = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(storyboard, animated: true)
    }


}

