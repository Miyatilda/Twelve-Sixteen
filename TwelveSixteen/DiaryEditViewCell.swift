/*
 *  DiaryViewCell.swift
 *  TwelveSixteen
 *
 *  Created by Seungmi Jeong on 2017. 6. 24..
 *  Copyright © 2017 Seungmi Jeong. All rights reserved.
 *
 */

import UIKit

class DiaryEditViewCell: UITableViewCell {
    
    // MARK: - override
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    
    // MARK: - action
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        print("save button tapped")
    }
    
    @IBAction func moodButtonTapped(_ sender: Any) {
        print("mood button tapped")
    }

    
    // MARK: - outlets
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var moodButton: UIButton!
    @IBOutlet weak var goodThingTextField: UITextField!
    @IBOutlet weak var bedThingTextField: UITextField!
    @IBOutlet weak var goodFeelingTextField: UITextField!
    @IBOutlet weak var bedFeelingTextField: UITextField!
    @IBOutlet weak var commentsTextField: UITextField!
    
}


extension DiaryEditViewCell: UITextFieldDelegate
{
    
}
