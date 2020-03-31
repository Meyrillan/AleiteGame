//: A UIKit based Playground for presenting user interface

import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    
    let buttonPlay = UIButton()
    let imagePlay = UIImage(named: "ButtonPlay@2x.png")
    
    override func loadView() {
    
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1, green: 0.4862745098, blue: 0.5294117647, alpha: 1)
        
        //        let label = UILabel()
        //        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        //        label.text = "Hello World!"
        //        label.textColor = .black
        
        buttonPlay.frame = CGRect(x: 570, y: 300, width: 300, height: 300)
        
        buttonPlay.setImage(imagePlay, for: .normal)
        
        buttonPlay
        view.addSubview(buttonPlay)
        self.view = view
    }
    
    override func viewDidLoad() {
        buttonPlay.addTarget(self, action: #selector(vc.touchedButton), for: .touchUpInside)
    }
    
    @IBAction func touchedButton() {
        print("aaaaa")
    }
    
}

// Present the view controller in the Live View window
let vc = MyViewController(screenType: .mac, isPortrait: true)
PlaygroundPage.current.liveView = vc.scale(to: 0.4)



