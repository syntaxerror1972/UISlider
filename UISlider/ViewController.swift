//
//  ViewController.swift
//  UISlider
//
//  Created by Shrawan Shinde on 21/01/17.
//  Copyright © 2017 Shrawan Shinde. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var rangeSlider = UISlider()
     var myLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        myLabel.frame = CGRect(x: 100, y: 200, width: 200, height: 20)
        view.addSubview(myLabel)
        
        
        rangeSlider = UISlider(frame:CGRect(x: 20, y: 260, width: 280, height: 20))
        rangeSlider.minimumValue = 0
        rangeSlider.maximumValue = 100
        rangeSlider.isContinuous = true
        rangeSlider.tintColor = UIColor.red
        rangeSlider.value = 50
        rangeSlider.addTarget (self,action: #selector(numberValueChanged), for: UIControlEvents.valueChanged
        )
        self.view.addSubview(rangeSlider)
    }
    
    func numberValueChanged(sender: UISlider) {
        rangeSlider.setValue(Float(Int(rangeSlider.value)), animated: true)
        let v = rangeSlider.value
        self.myLabel.text = "Slider Value : "+"\(v)"
    }
    



    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

