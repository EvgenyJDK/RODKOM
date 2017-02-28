//
//  EventsTableCell.swift
//  RodKom
//
//  Created by Administrator on 25.02.17.
//  Copyright © 2017 Administrator. All rights reserved.
//

import Foundation
import UIKit

class EventsTableCell : UITableViewCell {
    
    
    @IBOutlet weak var eventLabel: UILabel!
    
    @IBOutlet weak var eventDate: UILabel!
    
    @IBOutlet weak var eventIconView: UIImageView!
    
    
    
}

//
//extension UIImageView {
//    
//    func setRounded() {
//        let radius = CGRectGetWidth(self.frame) / 2
//        self.layer.cornerRadius = radius
//        self.layer.masksToBounds = true
//    }
//}