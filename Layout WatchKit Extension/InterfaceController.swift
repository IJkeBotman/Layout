//
//  InterfaceController.swift
//  Layout WatchKit Extension
//
//  Created by IJke Botman on 16/01/2018.
//  Copyright © 2018 IJke Botman. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet var collapsedCommentLabel: WKInterfaceLabel!
    @IBOutlet var expandedCommentLabel: WKInterfaceLabel!
    @IBOutlet var moreLabel: WKInterfaceLabel!
    @IBOutlet var wwdcImage: WKInterfaceImage!
    var expanded = false
    

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        WKExtension.shared().isAutorotating = true
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func onMoreButton() {
        expanded = !expanded
        collapsedCommentLabel.setHidden(expanded)
        expandedCommentLabel.setHidden(!expanded)
        moreLabel.setText("Tap to " + (expanded ? "view less" : "view more") + "...")
        
        if expanded {
            scroll(to: expandedCommentLabel, at: .bottom, animated: true)
        }
    }
    
}
