//
//  CHWindowConteoller.swift
//
//  Created by Diamond Mohanty on 26/10/20.
//  Copyright © 2020 cliffcodes. All rights reserved.
//

import Cocoa

public class CHWindowController: NSWindowController {

    var viewControllerClass: AnyClass {
        return CHViewController.self
    }
    
    var viewController: CHViewController!
    
    override init(window: NSWindow?) {
        
        super.init(window: window)
        if let viewController = NSClassFromString(NSStringFromClass(viewControllerClass)) as? CHViewController.Type {
            self.viewController = viewController.init()
            self.viewController.windowController = self
            guard let containerView = (self.window as? CHWindow)?.containerView else { return }
            containerView.wantsLayer = true
            containerView.layer?.backgroundColor = NSColor.red.cgColor
            containerView.addSubview(self.viewController.view)
            self.viewController.view.pinEdges(to: containerView)
        }
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder: ) not implemented")
    }
    
}
