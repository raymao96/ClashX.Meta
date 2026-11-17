//
//  DashboardManagerSwiftUI.swift
//  ClashX Meta
//
//  Copyright © 2023 west2online. All rights reserved.
//

import Cocoa
import RxSwift


class DashboardManager: NSObject {
	
	static let shared = DashboardManager()

	let appNameResolver = AppNameResolver()

	override init() {
	}
	
	var clashWebWindowController: ClashWebViewWindowController?

	func show(_ sender: NSMenuItem?) {
		showWebWindow(sender)
	}
	
	func showWebWindow(_ sender: NSMenuItem?) {
		if clashWebWindowController == nil {
			clashWebWindowController = ClashWebViewWindowController.create()
			clashWebWindowController?.onWindowClose = {
				[weak self] in
				self?.clashWebWindowController = nil
			}
		}
		clashWebWindowController?.showWindow(sender)
	}
	
}
