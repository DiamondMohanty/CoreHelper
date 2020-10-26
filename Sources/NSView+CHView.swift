//
//  File.swift
//  
//
//  Created by Diamond Mohanty on 26/10/20.
//

import Cocoa

open extension NSView {
    
    func pinEdges(to other: NSView) {
        self.translatesAutoresizingMaskIntoConstraints = false
        leadingAnchor.constraint(equalTo: other.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: other.trailingAnchor).isActive = true
        topAnchor.constraint(equalTo: other.topAnchor).isActive = true
        bottomAnchor.constraint(equalTo: other.bottomAnchor).isActive = true
    }
    
}
