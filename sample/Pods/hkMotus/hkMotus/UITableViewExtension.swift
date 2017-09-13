//
//  UITableViewExtension.swift
//  hkMotus
//
//  Created by Anderson Santos Gusmao on 12/09/17.
//  Copyright © 2017 Heuristisk. All rights reserved.
//

import UIKit

extension UITableView {
    
    public enum EffectEnum {
        case roll
    }
    
    public func reloadData(effect: EffectEnum) {
        self.reloadData()
        let cells = self.visibleCells
        
        let tableViewHeight = self.bounds.height
        
        for cell in cells {
            cell.transform = CGAffineTransform(translationX: 0, y: tableViewHeight)
        }
        
        var delayCounter = 0
        
        for cell in cells {
            UIView.animate(withDuration: 2, delay: Double(delayCounter) * 0.035, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                cell.transform = CGAffineTransform.identity
            }, completion: nil)
            delayCounter += 1
        }
    }
}
