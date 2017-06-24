/*
 *  DiaryViewController.swift
 *  TwelveSixteen
 *
 *  Created by Seungmi Jeong on 2017. 6. 24..
 *  Copyright © 2017 Seungmi Jeong. All rights reserved.
 *
 */

import UIKit

let ReuseIdentifier = "diaryCell"

class DiaryViewController: UITableViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.isHidden = true
        self.tableView.register(UINib(nibName: "DiaryEditViewCell", bundle: nil), forCellReuseIdentifier: ReuseIdentifier)
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 313
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ReuseIdentifier, for: indexPath) as? DiaryEditViewCell else {
            return UITableViewCell()
        }
        
        cell.isUserInteractionEnabled = true
        return cell
    }
    
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 400
//    }

}
