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

        let sampleView = MMColorableView.init(frame: self.view.frame, colors:  [.black, .gray, .red, .orange, .green, .purple], changeEvery: 1.0)
        self.view.addSubview(sampleView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
