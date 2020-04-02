import Foundation
import UIKit

public class NivelUmViewController : UIViewController {
    
    let cenario = UIImage(named: "Cenário@2x.png")
    let buttonInicio = UIButton()
    let imageInicio = UIImage(named: "ButtonInicio@2x.png")
    let viewMissoes = UIImageView()
    let imageViewMissoes = UIImage(named: "ViewMissoes@2x.png")
    let labelMissoes = UILabel()
    
    public override func loadView() {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.2117647059, green: 0, blue: 0.3764705882, alpha: 1)
        
        let cenarioView = UIImageView(image: cenario)
        cenarioView.frame = CGRect(x: 0, y: 0, width: 1440, height: 900)
        
        buttonInicio.frame = CGRect(x: 0, y:800, width: 100, height: 100)
        buttonInicio.setImage(imageInicio, for: .normal)
        
        viewMissoes.frame = CGRect(x: 0, y: 0, width: 314, height: 333)
        viewMissoes.image = imageViewMissoes
        
        // Para descobrir qual o nome da fonte
//        for family in UIFont.familyNames {
//            print("\(family)")
//            for name in UIFont.fontNames(forFamilyName: family) {
//                print(" \(name)")
//            }
//        }
        
        labelMissoes.frame = CGRect(x: 36, y: 36, width: 68, height: 21)
        labelMissoes.text = "Missões"
        labelMissoes.font = UIFont(name: "SF-Pro-Rounded-Bold", size: 18)
        labelMissoes.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        view.addSubview(cenarioView)
        view.addSubview(buttonInicio)
        view.addSubview(viewMissoes)
        view.addSubview(labelMissoes)
        self.view = view
    }
    
    public override func viewDidLoad() {
        buttonInicio.addTarget(self, action: #selector(NivelUmViewController.touchedButtonInicio), for: .touchUpInside)
        
    }
    
    @IBAction public func touchedButtonInicio() {
        navigationController?.popViewController(animated: true)
    }
    
}
