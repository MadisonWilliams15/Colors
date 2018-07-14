//
//  ColorsViewController.swift
//  Colors
//
//  Created by Madison Williams on 7/3/18.
//  Copyright © 2018 Madison Williams. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var colorsTableView: UITableView!
    
    
    var colors = [Color(colorName : "red", uiColor : UIColor.red),
                  Color(colorName :"orange", uiColor :UIColor.orange),
                  Color(colorName :"yellow", uiColor :UIColor.yellow),
                  Color(colorName :"green", uiColor :UIColor.green),
                  Color(colorName :"blue", uiColor :UIColor.blue),
                  Color(colorName :"purple", uiColor :UIColor.purple),
                  Color(colorName :"brown", uiColor :UIColor.brown)]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        let color = colors[indexPath.row]
        cell.textLabel?.text = color.colorName
        cell.backgroundColor = color.uiColor
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ColorDetailViewController, let row = colorsTableView.indexPathForSelectedRow?.row{
            destination.color = colors[row]
        }
       
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.isSelected = false
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
