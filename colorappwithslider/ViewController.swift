//
//  ViewController.swift
//  colorappwithslider
//
//  Created by Apple on 12/20/18.
//  Copyright © 2018 mudassir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redslider: UISlider!
    @IBOutlet weak var greenslider: UISlider!
    @IBOutlet weak var blueslider: UISlider!
    
    @IBOutlet weak var colorview: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func changecolorcomponent(_ sender: Any) {
        
        redslider.maximumValue=1
        redslider.minimumValue=0
        //redslider.isContinuous=false (this line if you want to get the effect only when user stop sliding you will not get transition of color in continuous manner if you set this property to false)
        let r:CGFloat = CGFloat(redslider.value) // redslider.value will return float value converting to cgfloat because uicolor function will take cgfloat value as argument
        
        greenslider.maximumValue=1
        greenslider.minimumValue=0
        //greenslider.isContinuous=false
        let g:CGFloat = CGFloat(greenslider.value)
        
        blueslider.maximumValue=1
        blueslider.minimumValue=0
        //blueslider.isContinuous=false
        let b:CGFloat = CGFloat(blueslider.value)
        
        colorview.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }
    

}

