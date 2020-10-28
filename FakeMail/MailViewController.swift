//
//  MailViewController.swift
//  FakeMail
//
//  Created by Thomas Ploentzke on 28.10.20.
//

import Cocoa
import AppKit
import WebKit

class MailViewController: NSViewController, NSTableViewDelegate, NSTableViewDataSource {

	@IBOutlet var mailTableView: NSTableView!
	@IBOutlet var mailContentView: WKWebView!

	override func awakeFromNib() {

		super.awakeFromNib()
	}
		
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
        
        
        self.mailTableView.reloadData()
    }
    
    func numberOfRows(in tableView: NSTableView) -> Int {
        return defaultMailContent.count
    }

    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
    
		if let cell = mailTableView.makeView(withIdentifier: NSUserInterfaceItemIdentifier(rawValue: "MailTableCellView"), owner: nil) as? MailTableCellView {
		
				let contentDic = defaultMailContent[row]
			
				if let sender = contentDic["sender"] {
					cell.senderTF.stringValue = sender
				}
				
				if let subject = contentDic["subject"] {
					cell.subjectTF.stringValue = subject
				}
			
				if let date = contentDic["date"],
					let time = contentDic["time"] {
					cell.dateTF.stringValue = date + " " + time
				}
            
            return cell
        } else {
            return nil
        }
    }

	func tableViewSelectionDidChange(_ notification: Notification) {
	
		//mailContentView
		
		let selectedRow = self.mailTableView.selectedRow
		
		let contentDic = defaultMailContent[selectedRow]
		
		if let bodyPath = contentDic["body"] {
		
			if let url = Bundle.main.url(forResource: bodyPath, withExtension: "html") {
			
				if #available(OSX 10.11, *) {
						mailContentView.loadFileURL(url, allowingReadAccessTo: url)
					} else {
					// Fallback on earlier versions
					
						do {
					
							let htmlString = try String(contentsOf: url)
					
							mailContentView.loadHTMLString(htmlString, baseURL: nil)
						
						} catch {
				
					
						}
				
					}
				}
			
		} else if let pathURL = contentDic["bodyURL"] {
		
			if let myURL = URL(string:pathURL) {
			
				let myRequest = URLRequest(url: myURL)
				mailContentView.load(myRequest)
			}
			
		}
		
		
	}
	
}
