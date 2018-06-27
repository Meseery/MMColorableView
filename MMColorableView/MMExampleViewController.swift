//
//  MMExampleViewController.swift
//  MMColorableView
//
//  Created by Mohamed EL Meseery on 6/27/18.
//  Copyright © 2018 Meseery. All rights reserved.
//

import UIKit

class MMExampleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let sampleView = MMColorableView(frame: self.view.frame,
                                         colors: [.black,
                                                   .gray,
                                                   .red,
                                                   .orange,
                                                   .green,
                                                   .purple,
                                                   .blue,
                                                   .magenta],
                                         changeEvery: 1.0)
        self.view.addSubview(sampleView!)
    }
}
