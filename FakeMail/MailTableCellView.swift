//
//  MailTableCellView.swift
//  FakeMail
//
//  Created by Thomas Ploentzke on 28.10.20.
//

import AppKit

class MailTableCellView: NSTableCellView {

	@IBOutlet var senderTF: NSTextField!
	@IBOutlet var subjectTF: NSTextField!
	@IBOutlet var dateTF: NSTextField!
	@IBOutlet var newItem: NSImageView!
	
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        // Drawing code here.
    }
    
}
