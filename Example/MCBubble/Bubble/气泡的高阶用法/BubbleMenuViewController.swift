//
//  BubbleMenuViewController.swift
//  MCBubble_Example
//
//  Created by qixin on 2023/12/19.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import UIKit
import MCBubble


class BubbleMenuViewController: BubbleBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        isAutoShowBubble = false
        
        button.addTarget(self, action: #selector(menuEvent), for: .touchUpInside)

        
    }
    
    @objc override func event() {
        
    }
    

    @objc func menuEvent() {
        let menuBubble = MCBubble.makeMenuBubble()
        
        let item1 = MCBubble.Menu.Item(text: "监控动态", identifier: "", image: UIImage(named: "item1"))
        let item2 = MCBubble.Menu.Item(text: "监控列表", identifier: "", image: UIImage(named: "item2"))
        let item3 = MCBubble.Menu.Item(text: "取消监控", identifier: "", image: UIImage(named: "item3"))
        let item4 = MCBubble.Menu.Item(text: "取消监控", identifier: "", image: UIImage(named: "item4"))

        
        var config = MCBubble.Menu.Config()
        config.width = .auto(200)
        let menuView = BTBubbleMenu(items: [item1, item2, item3, item4], config: config)
        menuView.selectItemBlock = { item in
            print(item)
        }
        menuBubble.show(customView: menuView, direction: .auto, from: button, duration: nil)
    }

}
