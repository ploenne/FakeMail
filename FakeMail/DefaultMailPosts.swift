//
//  DefaultMailPosts.swift
//  FakeMail
//
//  Created by Thomas Ploentzke on 28.10.20.
//

import Foundation


let dummyMail1: [String: String] = [
    "date" : "Jetzt",
    "time" : "   ",
    "sender" : "Guido Medert",
    "subject" : "I took the blue pil",
	"body" : "guidoMail"
]

let dummyMail2: [String: String] = [
    "date" : "vor 5 Minuten",
    "time" : " ",
    "sender" : "Guido Medert",
    "subject" : "Nochmal der Guido hier",
	"body" : "guidoMail2"
]

let dummyMail3: [String: String] = [
    "date" : "17.8.2019",
    "time" : "15:35 Uhr",
    "sender" : "Bill Gates",
    "subject" : "Die Impfung steht für Sie bereit ",
	"bodyURL" : "https://www.apple.com"
]

let dummyMail4: [String: String] = [
    "date" : "17.8.2019",
    "time" : "15:35 Uhr",
    "sender" : "Attila H.",
    "subject" : "Finger weg von der Bill Gates Mail ",
	"body" : "peterMail"
]

let defaultMailContent: Array<[String: String]> =  [dummyMail1, dummyMail2, dummyMail3, dummyMail4]
