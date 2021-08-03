//
//  ViewController.swift
//  Colormaker
//
//  Created by Shelley Gertrudis on 8/3/21.
//  Copyright © 2021 Shelley Gertrudis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private var number = 0;
    @IBOutlet weak var redField: UITextField!
    @IBOutlet weak var redColor: UISlider!
    @IBOutlet weak var blueColor: UISlider!
    @IBOutlet weak var greenColor: UISlider!
    @IBOutlet weak var greenField: UITextField!
    @IBOutlet weak var blueField: UITextField!
    @IBOutlet weak var toggleButton: UIButton!
    @IBOutlet weak var theMessege: UILabel!
    @IBOutlet weak var counter: UILabel!
    @IBOutlet weak var colorText: UITextField!
    @IBOutlet weak var toolbar: UIToolbar!
    override func viewDidLoad() {
        super.viewDidLoad()
        toggleButton.setTitle("Toggle Text", for: .normal)
        counter.text = "Counter: \(number)";
        theMessege.text = "Who am I?"
        counter.textAlignment = .center
        counter.lineBreakMode = .byWordWrapping
        counter.sizeToFit()
        colorText.sizeToFit()
        // Do any additional setup after loading the view.
    }
    @IBAction func endEdit(_ sender: Any) {
        if let color = colorText.text,
            let mycolor = UIColor.init(named: color)
        { view.backgroundColor = mycolor }
        self.view.endEditing(true)
    }
    
    @IBAction func RGB(_ sender: UIButton) {
        if let redColor = redField.text, let blueColor = blueField.text, let greenColor = greenField.text, let redC = Double(redColor), let greenC = Double(greenColor), let blueC = Double(blueColor)
        {
            view.backgroundColor = UIColor.init(red: CGFloat(redC), green: CGFloat(Double(greenC)), blue: CGFloat(Double(blueC)), alpha: 1)
        }
      
    }
    @IBAction func Redchanged(_ sender: Any) {
            view.backgroundColor = UIColor.init(red: CGFloat(redColor.value), green: CGFloat(Double(greenColor.value)), blue: CGFloat(Double(blueColor.value)), alpha: 1)
    }
    @IBAction func textChange(_ sender: UIButton) {
        number += 1
        switch number {
        case 1:
            theMessege.text = "I'm going to be an App Developer"
        case 2:
            theMessege.text = "And now i AM!"
        default:
            theMessege.text = "I really don't know"
        }
        
        counter.text = "Counter: \(number)";
            }
    
}

