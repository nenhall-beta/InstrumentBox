//
//  MainWindow.swift
//  InstrumentBox
//
//  Created by meitu@nenhall on 2022/11/24.
//

import Cocoa
import SwiftUI

class MainWindow: NSWindow {
    
    let mainView = MainView()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupSubviews()
      
    }
    
    private func setupSubviews() {
        guard let contentView = contentView else { return }
        let hostingView = NSHostingView(rootView: mainView)
        contentView.addSubview(hostingView)
        hostingView.frame = contentView.bounds
        hostingView.autoresizingMask = [.width, .height]
    }
    
}

class WindowController: NSWindowController {
    
    
}

class ViewController: NSViewController {
    

}
