import Foundation
import UIKit
import PlaygroundSupport
import SpriteKit

public class NivelUmViewController : UIViewController {
    
    let viewSprite = SKView(frame: CGRect(x: 0, y: 0, width: 1440, height: 900))
    let scene = SKScene(size: CGSize(width: 1440, height: 900))
    
    let cenario = SKSpriteNode(imageNamed: "Cenário@2x.png")
    let armario = SKSpriteNode(imageNamed: "Armário@2x.png")
    let balcao = SKSpriteNode(imageNamed: "Balcão@2x.png")
    let freezer = SKSpriteNode(imageNamed: "FreezerSemLeite@2x.png")
    let lavaLouca = SKSpriteNode(imageNamed: "LavaLouca@2x.png")
    let filtroAgua = SKSpriteNode(imageNamed: "filtroAgua@2x.png")
    let sofa = SKSpriteNode(imageNamed: "sofa@2x.png")
    let centroSofa = SKSpriteNode(imageNamed: "centroSofa@2x.png")
    
    let buttonInicio = UIButton()
    let imageInicio = UIImage(named: "ButtonInicio@2x.png")
    let viewMissoes = UIImageView()
    let imageViewMissoes = UIImage(named: "ViewMissoes@2x.png")
    let buttonDoar = UIButton()
    let labelMissoes = UILabel()
    let labelMissaoUm = UILabel()
    let labelMissaoDois = UILabel()
    let labelMissaoTres = UILabel()
    let labelMissaoQuatro = UILabel()
    let viewBgPontuacao = UIImageView()
    let imageBgViewPontuacao = UIImage(named: "ViewPontuacao@2x.png")
    let viewPontuacao = UIImageView()
    let imagePontuacaoVazia = UIImage(named: "PontuacaoVazia@2x.png")
    let labelPontuacao = UILabel()
    let viewBgReacoes = UIImageView()
    let imageBgViewReacoes = UIImage(named: "viewReacoes@2x.png")
    let viewReacoesMae = UIImageView()
    let imageReacoesMae = UIImage(named: "ReacoesMae@2x.png")
    let labelMae = UILabel()
    let labelMaeFeliz = UILabel()
    let labelMaeSeria = UILabel()
    let labelMaeTriste = UILabel()
    let viewReacoesBebe = UIImageView()
    let imageReacoesBebe = UIImage(named: "ReacaoBebe@2x.png")
    let labelBebe = UILabel()
    let labelBebeFeliz = UILabel()
    
    let sfBoldMaior = UIFont(name: "SFProRounded-Bold", size: 18)
    let sfBoldMenor = UIFont(name: "SFProRounded-Bold", size: 14)
    let sfRegularMaior = UIFont(name: "SFProRounded-Regular", size: 18)
    let sfRegular = UIFont(name: "SFProRounded-Regular", size: 14)
    
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
        
        viewBgPontuacao.frame = CGRect(x: 366, y: 0, width: 144, height: 217)
        viewBgPontuacao.image = imageBgViewPontuacao
        viewPontuacao.frame = CGRect(x: 403, y: 79.18, width: 70.96, height: 105.82)
        viewPontuacao.image = imagePontuacaoVazia
        
        labelPontuacao.frame = CGRect(x: 392, y: 36, width: 92, height: 21)
        labelPontuacao.text = "Pontuação"
        labelPontuacao.font = sfBoldMaior
        labelPontuacao.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        viewBgReacoes.frame = CGRect(x: 1168.01, y: 0, width: 271.99, height: 220.88)
        viewBgReacoes.image = imageBgViewReacoes
        viewReacoesMae.frame = CGRect(x: 1204, y: 65, width: 200, height: 27)
        viewReacoesMae.image = imageReacoesMae
        viewReacoesBebe.frame = CGRect(x: 1204, y: 158, width: 68, height: 27)
        viewReacoesBebe.image = imageReacoesBebe
        
        labelMae.frame = CGRect(x: 1211, y: 36, width: 35, height: 21)
        labelMae.text = "Mãe"
        labelMae.font = sfRegularMaior
        labelMae.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        labelMaeFeliz.frame = CGRect(x: 1241, y: 68, width: 11, height: 21)
        labelMaeFeliz.text = "0"
        labelMaeFeliz.font = sfRegularMaior
        labelMaeFeliz.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        labelMaeSeria.frame = CGRect(x: 1312, y: 68, width: 11, height: 21)
        labelMaeSeria.text = "0"
        labelMaeSeria.font = sfRegularMaior
        labelMaeSeria.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        labelMaeTriste.frame = CGRect(x: 1382, y: 68, width: 11, height: 21)
        labelMaeTriste.text = "0"
        labelMaeTriste.font = sfRegularMaior
        labelMaeTriste.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        labelBebe.frame = CGRect(x: 1211, y: 129, width: 154, height: 21)
        labelBebe.text = "Bebês alimentados"
        labelBebe.font = sfRegularMaior
        labelBebe.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        labelBebeFeliz.frame = CGRect(x: 1241, y: 161, width: 11, height: 21)
        labelBebeFeliz.text = "0"
        labelBebeFeliz.font = sfRegularMaior
        labelBebeFeliz.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        view.addSubview(viewSprite)
        view.addSubview(buttonInicio)
        view.addSubview(viewMissoes)
        view.addSubview(labelMissoes)
        view.addSubview(labelMissaoUm)
        view.addSubview(buttonDoar)
        view.addSubview(labelMissaoDois)
        view.addSubview(labelMissaoTres)
        view.addSubview(labelMissaoQuatro)
        view.addSubview(viewBgPontuacao)
        view.addSubview(viewPontuacao)
        view.addSubview(labelPontuacao)
        view.addSubview(viewBgReacoes)
        view.addSubview(viewReacoesMae)
        view.addSubview(viewReacoesBebe)
        view.addSubview(labelMae)
        view.addSubview(labelMaeFeliz)
        view.addSubview(labelMaeSeria)
        view.addSubview(labelMaeTriste)
        view.addSubview(labelBebe)
        view.addSubview(labelBebeFeliz)
        
        self.view = view 
    }
    
    public override func viewDidLoad() {
        buttonInicio.addTarget(self, action: #selector(NivelUmViewController.touchedButtonInicio), for: .touchUpInside)
        buttonDoar.addTarget(self, action: #selector(NivelUmViewController.touchedButtonDoar), for: .touchUpInside)
        
        viewSprite.presentScene(scene)
        scene.backgroundColor = .clear
        viewSprite.allowsTransparency = true
        viewSprite.backgroundColor = .clear
        
        cenario.setScale(1)
        cenario.anchorPoint = CGPoint.zero
        cenario.position = CGPoint(x: 0, y: 0)
        
        lavaLouca.setScale(1)
        lavaLouca.position = scene.convertPoint(fromView: CGPoint(x: 787, y: 250))
        
        freezer.setScale(1)
        freezer.position = scene.convertPoint(fromView: CGPoint(x: 680, y: 291))
        
        balcao.setScale(1)
        balcao.position = scene.convertPoint(fromView: CGPoint(x: 565, y: 422))
        
        armario.setScale(1)
        armario.position = scene.convertPoint(fromView: CGPoint(x: 389, y: 457))
        
        filtroAgua.setScale(1)
        filtroAgua.position = scene.convertPoint(fromView: CGPoint(x: 894, y: 256))
        
        sofa.setScale(1)
        sofa.position = scene.convertPoint(fromView: CGPoint(x: 1040, y: 373))
        
        centroSofa.setScale(1)
        centroSofa.position = scene.convertPoint(fromView: CGPoint(x: 1247, y: 496))
        
        let admDireitaTexture = SKTexture(imageNamed: "ADM  - Direita0@2x.png")
        let admDireita = SKSpriteNode(texture: admDireitaTexture)
        
        let comecoNome = "ADM  - Direita"
        let índices = [0,1,2,3]
        var imagensAnimação: [SKTexture] = []
        
        for i in índices {
            let umaPoseAdmDireita = SKTexture(imageNamed: "\(comecoNome)\(i)")
            imagensAnimação.append(umaPoseAdmDireita)
        }
        
        let animação = SKAction.animate(with: imagensAnimação, timePerFrame: 3.0/20.0)
        let animaçãoRepetida = SKAction.repeatForever(animação)
        admDireita.run(animaçãoRepetida)
        
        admDireita.setScale(1)
        admDireita.position = CGPoint(x: 700, y: 300)
        
        scene.addChild(cenario)
        scene.addChild(lavaLouca)
        scene.addChild(freezer)
        scene.addChild(balcao)
        scene.addChild(armario)
        scene.addChild(filtroAgua)
        scene.addChild(sofa)
        scene.addChild(centroSofa)
        scene.addChild(admDireita)
    }
    
    @IBAction public func touchedButtonInicio() {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction public func touchedButtonDoar() {
        
    }
    
}
