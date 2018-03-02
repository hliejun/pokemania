//  Created by Huang Lie Jun on 2/3/18.
//  Copyright © 2018 nus.cs3217.a0123994. All rights reserved.

import UIKit

class PaletteCell: UICollectionViewCell {

    override var isSelected: Bool {
        didSet {
            layer.borderColor = isSelected ? #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1) : #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0)
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        isSelected = false
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        decorate()
    }

    private func decorate() {
        layer.cornerRadius = frame.height / CGFloat(2)
        layer.borderWidth = 4
    }

}
