//
//  MailWindow.swift
//  FakeMail
//
//  Created by Thomas Ploentzke on 02.11.20.
//

import Cocoa

class MailWindow: NSWindow {

	override func performKeyEquivalent(with event: NSEvent) -> Bool {
		
		guard event.type != .keyDown else {
			return super.performKeyEquivalent(with: event)
		}
		
		
		let res = super.performKeyEquivalent(with: event)
		
		print(event)
		print("KeyEquivalent Result: \(res)")
		
		return res
	}
	
	
	override func sendEvent(_ event: NSEvent) {

		guard event.type == .keyDown else {
			return super.sendEvent(event)
		}
		
		print("send event: \(event)")
		
		super.sendEvent(event)
		
		print(event)
		
	}
}
