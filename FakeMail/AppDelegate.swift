//
//  AppDelegate.swift
//  FakeMail
//
//  Created by Thomas Ploentzke on 28.10.20.
//

import Cocoa
import UserNotifications

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

	@IBOutlet var window: NSWindow!

	@IBOutlet var mailViewController: MailViewController!

	func applicationDidFinishLaunching(_ aNotification: Notification) {
		// Insert code here to initialize your application
		
		
		let center = UNUserNotificationCenter.current()
		center.requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
    
		if let error = error {
			// Handle the error here.
		}
    
		// Enable or disable features based on the authorization.
	}

	}

	func applicationWillTerminate(_ aNotification: Notification) {
		// Insert code here to tear down your application
	}
	
	func sendEvent(_ event: NSEvent) {
	
		print("send event: \(event)")
	}

	func performKeyEquivalent(with event: NSEvent) -> Bool {
		
//		guard event.type != .keyDown else {
//			return super.performKeyEquivalent(with: event)
//		}
//
//
//		let res = super.performKeyEquivalent(with: event)
		
		print("KeyEquivalent: \(event)")
		
		return true
	}
}

