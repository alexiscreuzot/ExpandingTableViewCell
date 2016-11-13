//
//  ExpandingTableViewCell.swift
//  ExpandingCell
//
//  Created by Alexis Creuzot on 13/11/2016.
//  Copyright © 2016 alexiscreuzot. All rights reserved.
//

import UIKit

class ExpandingTableViewCellContent {
    var title: String?
    var subtitle: String?
    var expanded: Bool

    init(title: String, subtitle: String) {
        self.title = title
        self.subtitle = subtitle
        self.expanded = false
    }
}

class ExpandingTableViewCell: UITableViewCell {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var subtitleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func set(content: ExpandingTableViewCellContent) {
        self.titleLabel.text = content.title
        self.subtitleLabel.text = content.expanded ? content.subtitle : ""
    }
}
