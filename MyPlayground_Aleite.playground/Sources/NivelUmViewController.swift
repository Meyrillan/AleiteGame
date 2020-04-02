import Foundation
import UIKit

public class NivelUmViewController : UIViewController {
    
    let cenario = UIImage(named: "Cenário@2x.png")
    let buttonInicio = UIButton()
    let imageInicio = UIImage(named: "ButtonInicio@2x.png")
    let viewMissoes = UIImageView()
    let imageViewMissoes = UIImage(named: "ViewMissoes@2x.png")
    
   public override func loadView() {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.2117647059, green: 0, blue: 0.3764705882, alpha: 1)
        
        //        let label = UILabel()
        //        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        //        label.text = "Hello World!"
        //        label.textColor = .black
        
        
        let cenarioView = UIImageView(image: cenario)
        cenarioView.frame = CGRect(x: 0, y: 0, width: 1440, height: 900)
        
        buttonInicio.frame = CGRect(x: 0, y:800, width: 100, height: 100)
        buttonInicio.setImage(imageInicio, for: .normal)
        
        viewMissoes.frame = CGRect(x: 0, y: 0, width: 314, height: 333)
        viewMissoes.image = imageViewMissoes
        
        
        view.addSubview(cenarioView)
        view.addSubview(buttonInicio)
        view.addSubview(viewMissoes)
        self.view = view
    }
    
    public override func viewDidLoad() {
        buttonInicio.addTarget(self, action: #selector(NivelUmViewController.touchedButtonInicio), for: .touchUpInside)
        
    }
    
    @IBAction public func touchedButtonInicio() {
        
    }
    
}
