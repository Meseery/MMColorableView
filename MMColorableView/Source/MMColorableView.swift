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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        changeColorTimer()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    /**
        Change view color every changeEverySecond seconds.
     */
    func changeColorTimer()  {
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
