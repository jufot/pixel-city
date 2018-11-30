//
//  PopVC.swift
//  pixel-city
//
//  Created by Jeremiah Ufot on 11/30/18.
//  Copyright © 2018 Jeremiah Ufot. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var popImageView: UIImageView!
    
    var passedImage: UIImage!
    
    //A function that can set a property that hold the image so it can fill the imageView
    func initData(forImage image: UIImage) {
        self.passedImage = image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = passedImage
        addDoubleTap()
    }
    
    //Function that creates and adds double-tap gesture to the view controller
    func addDoubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    
    //Function that dismisses the imageView
    @objc func screenWasDoubleTapped() {
        dismiss(animated: true, completion: nil)
    }
    
    
}
