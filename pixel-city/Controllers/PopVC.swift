//
//  PopVC.swift
//  pixel-city
//
//  Created by Jeremiah Ufot on 11/30/18.
//  Copyright © 2018 Jeremiah Ufot. All rights reserved.
//

//Finished
import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var popImageView: UIImageView!
    
    @IBOutlet weak var popTitleLbl: UILabel!
    var passedImage: UIImage!
    var passedTitle: String!
    
    //A function that can set a property that hold the image so it can fill the imageView
    func initData(forImage image: UIImage, forTitle title: String) {
        self.passedImage = image
        self.passedTitle = title
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = passedImage
        popTitleLbl.text = passedTitle!
        popTitleLbl.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
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
