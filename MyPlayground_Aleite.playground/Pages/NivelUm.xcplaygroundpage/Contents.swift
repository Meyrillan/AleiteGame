//: [Previous](@previous)

import Foundation
import UIKit
import PlaygroundSupport

// Present the view controller in the Live View window
let vcNivelUm = NivelUmViewController(screenType: .mac, isPortrait: true)
PlaygroundPage.current.liveView = vcNivelUm.scale(to: 0.4)
