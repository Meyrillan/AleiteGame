import Foundation
import UIKit

public class NivelUmViewController : UIViewController {
    
    let cenario = UIImage(named: "Cenário@2x.png")
    let buttonInicio = UIButton()
    let imageInicio = UIImage(named: "ButtonInicio@2x.png")
    let viewMissoes = UIImageView()
    let imageViewMissoes = UIImage(named: "ViewMissoes@2x.png")
    let sfBoldMaior = UIFont(name: "SFProRounded-Bold", size: 18)
    let sfBoldMenor = UIFont(name: "SFProRounded-Bold", size: 14)
    let sfRegular = UIFont(name: "SFProRounded-Regular", size: 14)
    let buttonDoar = UIButton()
    let labelMissoes = UILabel()
    let labelMissaoUm = UILabel()
    let labelMissaoDois = UILabel()
    let labelMissaoTres = UILabel()
    let labelMissaoQuatro = UILabel()
    
    public override func loadView() {
        
        //         Para descobrir qual o nome da fonte
        //        for family in UIFont.familyNames {
        //            print("\(family)")
        //            for name in UIFont.fontNames(forFamilyName: family) {
        //                print(" \(name)")
        //            }
        //        }
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.2117647059, green: 0, blue: 0.3764705882, alpha: 1)
        
        let cenarioView = UIImageView(image: cenario)
        cenarioView.frame = CGRect(x: 0, y: 0, width: 1440, height: 900)
        
        buttonInicio.frame = CGRect(x: 0, y:800, width: 100, height: 100)
        buttonInicio.setImage(imageInicio, for: .normal)
        
        viewMissoes.frame = CGRect(x: 0, y: 0, width: 314, height: 333)
        viewMissoes.image = imageViewMissoes
        
        labelMissoes.frame = CGRect(x: 36, y: 36, width: 68, height: 21)
        labelMissoes.text = "Missões"
        labelMissoes.font = sfBoldMaior
        labelMissoes.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        labelMissaoUm.frame = CGRect(x: 36, y: 73, width: 250, height: 16)
        labelMissaoUm.text = "Doe 1 frasco de leite para um hospital"
        labelMissaoUm.font = sfRegular
        labelMissaoUm.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        buttonDoar.frame = CGRect(x: 62, y: 105, width: 165, height: 56)
        buttonDoar.setTitle("Doar", for: .normal)
        buttonDoar.titleLabel?.font = sfBoldMenor
        buttonDoar.backgroundColor = #colorLiteral(red: 1, green: 0.4862745098, blue: 0.5294117647, alpha: 1)
        buttonDoar.layer.cornerRadius = 14
        
        labelMissaoDois.frame = CGRect(x: 36, y: 185, width: 250, height: 16)
        labelMissaoDois.text = "Faça o entregador deixar o leite no freezer"
        labelMissaoDois.font = sfRegular
        labelMissaoDois.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        labelMissaoTres.frame = CGRect(x: 36, y: 225, width: 250, height: 40)
        labelMissaoTres.text = "Faça o administrador entregar o leite para \na mãe"
        labelMissaoTres.numberOfLines = 2
        labelMissaoTres.font = sfRegular
        labelMissaoTres.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        labelMissaoQuatro.frame = CGRect(x: 36, y: 281, width: 190, height: 16)
        labelMissaoQuatro.text = "Faça a mãe alimentar o bebê"
        labelMissaoQuatro.font = sfRegular
        labelMissaoQuatro.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        view.addSubview(cenarioView)
        view.addSubview(buttonInicio)
        view.addSubview(viewMissoes)
        view.addSubview(labelMissoes)
        view.addSubview(labelMissaoUm)
        view.addSubview(buttonDoar)
        view.addSubview(labelMissaoDois)
        view.addSubview(labelMissaoTres)
        view.addSubview(labelMissaoQuatro)
        self.view = view
    }
    
    public override func viewDidLoad() {
        buttonInicio.addTarget(self, action: #selector(NivelUmViewController.touchedButtonInicio), for: .touchUpInside)
        buttonDoar.addTarget(self, action: #selector(NivelUmViewController.touchedButtonDoar), for: .touchUpInside)
        
    }
    
    @IBAction public func touchedButtonInicio() {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction public func touchedButtonDoar() {
        
    }
    
}
