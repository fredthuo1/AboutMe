//
//  ViewController.swift
//  AboutMe
//
//  Created by CompSci 4220 Student on 6/17/20.
//  Copyright © 2020 umsl. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet var Name: UILabel!
    @IBOutlet weak var Profile: UILabel!
    
    let image = UIImage(named: "Camera")
    let g35 = UIImage(named: "G35")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = image
        
        imageView.layer.borderWidth = 1
        imageView.layer.masksToBounds = false
        imageView.layer.borderColor = UIColor.black.cgColor
        imageView.layer.cornerRadius = 105
        imageView.clipsToBounds = true
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        let title = sender.title(for: .normal)
        
        if title == "ME" {
            imageView.image = image
        } else if title == "G35" {
            imageView.image = g35
        }
    }
    
}

