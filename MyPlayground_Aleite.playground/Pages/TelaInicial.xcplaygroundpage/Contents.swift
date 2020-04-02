//: A UIKit based Playground for presenting user interface

import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    
    let buttonPlay = UIButton()
    let imagePlay = UIImage(named: "ButtonPlay@2x.png")
    
    let buttonPerfil = UIButton()
    let imagePerfil = UIImage(named: "ButtonPerfil@2x.png")
    
    let buttonDoacoes = UIButton()
    let imageDoacoes = UIImage(named: "ButtonDoacoes@2x.png")
    
    let buttonAudio = UIButton()
    let imageWithAudio = UIImage(named: "ButtonWithAudio@2x.png")
    let imageNoAudio = UIImage(named: "ButtonNoAudio@2x.png")
    
    var toggleAudio = 1
    
    override func loadView() {
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1, green: 0.4862745098, blue: 0.5294117647, alpha: 1)
        
        buttonPlay.frame = CGRect(x: 570, y: 300, width: 300, height: 300)
        
        buttonPlay.setImage(imagePlay, for: .normal)
        
        buttonPerfil.frame = CGRect(x: 1360, y: 32, width: 48, height: 48)
        
        buttonPerfil.setImage(imagePerfil, for: .normal)
        
        buttonDoacoes.frame = CGRect(x: 1360, y: 104, width: 48, height: 48)
        
        buttonDoacoes.setImage(imageDoacoes, for: .normal)
        
        buttonAudio.frame = CGRect(x: 1360, y: 176, width: 48, height: 48)
        
        buttonAudio.setImage(imageWithAudio, for: .normal)
        
        view.addSubview(buttonPlay)
        view.addSubview(buttonPerfil)
        view.addSubview(buttonDoacoes)
        view.addSubview(buttonAudio)
        
        self.view = view
    }
    
    override func viewDidLoad() {
        buttonPlay.addTarget(self, action: #selector(vc.touchedButtonPlay), for: .touchUpInside)
        
        buttonPerfil.addTarget(self, action: #selector(vc.touchedButtonPerfil), for: .touchUpInside)
        
        buttonDoacoes.addTarget(self, action: #selector(vc.touchedButtonDoacoes), for: .touchUpInside)
        
        buttonAudio.addTarget(self, action: #selector(vc.touchedButtonAudio), for: .touchUpInside)
    }
    
    @IBAction func touchedButtonPlay() {
        navigationController?.pushViewController(nivelUmViewController, animated: true)
    }
    
    @IBAction func touchedButtonPerfil() {
        
    }
    
    @IBAction func touchedButtonDoacoes() {
        
    }
    
    @IBAction func touchedButtonAudio() {
        if toggleAudio == 1 {
            //            player.play()
            toggleAudio = 2
            buttonAudio.setImage(imageNoAudio, for: .normal)
            
        } else {
            //            player.pause()
            toggleAudio = 1
            buttonAudio.setImage(imageWithAudio, for: .normal)
        }
    }
    
}

let vc = MyViewController(screenType: .mac, isPortrait: true)
let nivelUmViewController = NivelUmViewController(screenType: .mac, isPortrait: true)
let navigation = UINavigationController(screenType: .mac, isPortrait: true)
navigation.navigationBar.isHidden = true
navigation.pushViewController(vc, animated: true)
PlaygroundPage.current.liveView = navigation.scale(to: 0.4)

