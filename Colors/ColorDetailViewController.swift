//
//  ColorDetailViewController.swift
//  Colors
//
//  Created by Madison Williams on 7/13/18.
//  Copyright © 2018 Madison Williams. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {
   
    var color: Color?
    
    
    @IBOutlet weak var colorNameLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        colorNameLabel.text = color?.colorName
        self.view.backgroundColor = color?.uiColor
        self.title = color?.colorName
        // Do any additional setup after loading the view.
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
