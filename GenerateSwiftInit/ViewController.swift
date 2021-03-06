//
//  ViewController.swift
//  GenerateSwiftInit
//
//  Created by Brandon Kobilansky on 6/13/16.
//  Copyright © 2016 Brandon Kobilansky. All rights reserved.
//

import Cocoa

import SwiftGenerator

class ViewController: NSViewController {

    @IBOutlet var inputTextView: NSTextView!
    @IBOutlet var outputTextView: NSTextView!

    @IBAction func generate(_ sender: AnyObject) {
        guard let lines = inputTextView.string else { return }

        let initializer = generateInit(lines: lines.components(separatedBy: "\n"), tabWidth: 4, indentationWidth: 4, usesTabs: false)

        outputTextView.string = initializer
    }
}

