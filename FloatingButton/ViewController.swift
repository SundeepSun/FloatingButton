//
//  ViewController.swift
//  FloatingButton
//
//  Created by Shivakumar, Sundeep on 4/21/17.
//  Copyright © 2017 Sundeep. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var floatingButton: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Floating Button
        floatingButton = UIButton(frame: CGRect(x: (self.tableView.frame.origin.x + self.tableView.frame.size.width - 70), y: (self.tableView.frame.origin.y + self.tableView.frame.size.height - 70), width: 50, height: 50))
        floatingButton?.layer.cornerRadius = 25
        floatingButton?.backgroundColor = UIColor.red
        floatingButton?.setBackgroundImage(UIImage(named:"Plus"), for: .normal)
        floatingButton?.layer.shadowOffset = CGSize(width: 5, height: 5)
        floatingButton?.layer.shadowColor = UIColor.black.cgColor
        floatingButton?.layer.shadowOpacity = 0.5
        self.tableView.addSubview(floatingButton!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = String(indexPath.row)
        return cell
    }
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        var frame:CGRect = (self.floatingButton?.frame)!
        frame.origin.y = scrollView.contentOffset.y + self.tableView.frame.size.height - 70;
        self.floatingButton!.frame = frame;
    }
    
}

