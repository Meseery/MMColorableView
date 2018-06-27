//
//  MMColorableView.swift
//  MMColorableView
//
//  Created by Mohamed EL Meseery on 6/27/18.
//  Copyright © 2018 Meseery. All rights reserved.
//

import UIKit

class MMColorableView: UIView {

    /// colors array to switch between them.
    public var viewColors : [UIColor]?
    /// time between each color change.
    public var changeEverySecond : Float = 0.2
    /// counter to change colors upon.
    private var colorCounter = 0
    
    convenience init?(frame:CGRect,
                     colors:[UIColor],
                     changeEvery seconds:Float) {
        guard colors.count > 2 else {
            return nil
        }
        self.init(frame: frame)
        self.viewColors = colors
        self.changeEverySecond = seconds
        setColorTimer()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    /**
        Change view color every changeEverySecond seconds.
     */
    private func setColorTimer()  {
        guard let colors = viewColors, colors.count > 1 else {fatalError("You have to define at least two colors to change between them")}
        let scheduledColorChanged = Timer.scheduledTimer(withTimeInterval: TimeInterval(changeEverySecond), repeats: true) { (timer) in  //1
            UIView.animate(withDuration: 2.0) {  //2
                self.layer.backgroundColor = colors[self.colorCounter % colors.count].cgColor  //3
                self.colorCounter+=1  //4
            }
        }
        
        scheduledColorChanged.fire()  //5
    }
}
