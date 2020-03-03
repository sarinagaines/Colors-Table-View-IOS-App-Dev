//
//  ColorsViewController.swift
//  Colors
//
//  Created by Sarina Gaines on 3/1/20.
//  Copyright © 2020 Sarina Gaines. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    struct TableViewColor{
        let color: String
        let background: UIColor
    }
    
    var colors = [
        TableViewColor(color: "red", background: UIColor.red),
        TableViewColor(color: "orange",background: UIColor.orange),
        TableViewColor(color: "yellow", background: UIColor.yellow),
        TableViewColor(color: "green", background: UIColor.green),
        TableViewColor(color: "blue", background: UIColor.blue),
        TableViewColor(color: "purple", background: UIColor.purple),
        TableViewColor(color:"brown", background: UIColor.brown)]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)

        cell.textLabel?.text = colors[indexPath.row].color
        cell.backgroundColor = colors[indexPath.row].background

        return cell
    
    }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

