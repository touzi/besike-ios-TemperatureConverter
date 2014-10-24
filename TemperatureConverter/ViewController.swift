//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by touzi on 14/10/24.
//  Copyright (c) 2014年 touzi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusLabel: UILabel!           //摄氏度
    @IBOutlet weak var fahrenheitLabel: UILabel!        //华氏度
    @IBOutlet weak var kelvinLabel: UILabel!            //开氏度
    @IBOutlet weak var temperatureSlider: UISlider!     //进度条
    
    
    
    
    @IBAction func temperatureChanged(sender: UISlider) {
        //TODO:滑动当前进度条，来更改温度显示
        self.updateTemperatureDisplays()
    }
    
    func updateTemperatureDisplays(){
        
        var C = self.temperatureSlider.value
        var F = (C * 9/5) + 32
        var K = C + 273.15
        
        self.celsiusLabel.text = String(format: "%.1f C", arguments: [C])
        self.fahrenheitLabel.text = String(format: "%.1f F", arguments: [F])
        self.kelvinLabel.text = String(format: "%.1f K", arguments: [K])
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
//        let screen = UIScreen.mainScreen()
//        println("屏幕固定界限: \(screen.fixedCoordinateSpace.bounds)")
//        println("屏幕的边界: \(screen.bounds)")
//        println("布局: \(topLayoutGuide.length)")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 初始化滚动条的最大值，最小值和默认值
        temperatureSlider.maximumValue = 100
        temperatureSlider.minimumValue = 0
        temperatureSlider.value = 30
        
        
        self.updateTemperatureDisplays()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

