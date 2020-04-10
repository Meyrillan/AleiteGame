import Foundation
import UIKit
import PlaygroundSupport
import SpriteKit

public class NivelUmViewController : UIViewController {
    
    let viewSprite = SKView(frame: CGRect(x: 0, y: 0, width: 1440, height: 900))
    let scene = SKScene(size: CGSize(width: 1440, height: 900))
    
    var adm = SKSpriteNode()
    var andandoFramesParaCima: [SKTexture] = []
    var andandoFramesParaBaixo: [SKTexture] = []
    
    var entregador = SKSpriteNode()
    var entregadorAndandoParaCima: [SKTexture] = []
    var entregadorAndandoParaBaixo: [SKTexture] = []
    
    var mudandoPontuacao: [UIImage] = []
    
    let cenario = SKSpriteNode(imageNamed: "Cenário@2x.png")
    let armario = SKSpriteNode(imageNamed: "Armário@2x.png")
    let balcao = SKSpriteNode(imageNamed: "Balcão@2x.png")
    let freezer = SKSpriteNode(imageNamed: "FreezerSemLeite@2x.png")
    let viewFreezer = UIImageView()
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
    var imagePontuacao = UIImage(named: "Pontuacao0@2x.png")
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
        
        labelMissoes.frame = CGRect(x: 30, y: 36, width: 68, height: 21)
        labelMissoes.text = "Missões"
        labelMissoes.font = sfBoldMaior
        labelMissoes.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        labelMissaoUm.frame = CGRect(x: 30, y: 73, width: 250, height: 16)
        labelMissaoUm.text = "Doe 1 frasco de leite para um hospital"
        labelMissaoUm.font = sfBoldMenor
        labelMissaoUm.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        buttonDoar.frame = CGRect(x: 58, y: 105, width: 165, height: 56)
        buttonDoar.setTitle("Doar", for: .normal)
        buttonDoar.titleLabel?.font = sfBoldMenor
        buttonDoar.backgroundColor = #colorLiteral(red: 1, green: 0.4862745098, blue: 0.5294117647, alpha: 1)
        buttonDoar.layer.cornerRadius = 14
        
        labelMissaoDois.frame = CGRect(x: 30, y: 185, width: 270, height: 40)
        labelMissaoDois.text = "Faça o entregador deixar o leite no freezer"
        labelMissaoDois.font = sfRegular
        labelMissaoDois.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        labelMissaoDois.alpha = 0.5
        
        labelMissaoTres.frame = CGRect(x: 30, y: 225, width: 270, height: 40)
        labelMissaoTres.text = "Faça o administrador entregar o leite para \na mãe"
        labelMissaoTres.numberOfLines = 2
        labelMissaoTres.font = sfRegular
        labelMissaoTres.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        labelMissaoTres.alpha = 0.5
        
        labelMissaoQuatro.frame = CGRect(x: 30, y: 281, width: 190, height: 16)
        labelMissaoQuatro.text = "Faça a mãe alimentar o bebê"
        labelMissaoQuatro.font = sfRegular
        labelMissaoQuatro.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        labelMissaoQuatro.alpha = 0.5
        
        viewBgPontuacao.frame = CGRect(x: 366, y: 0, width: 144, height: 217)
        viewBgPontuacao.image = imageBgViewPontuacao
        
        viewPontuacao.frame = CGRect(x: 403, y: 79.18, width: 70.96, height: 105.82)
        viewPontuacao.image = imagePontuacao
        
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
        
        viewFreezer.frame = CGRect(x: 636, y: 217, width: 90, height: 144.2)
        viewFreezer.image = UIImage(named: "FreezerTransparente@2x.png")
        viewFreezer.isUserInteractionEnabled = false
        let tapFreezer = UITapGestureRecognizer(target: self, action: #selector(handleTapInFreezer))
        viewFreezer.addGestureRecognizer(tapFreezer)
        
        pontuacao()
        
        view.addSubview(viewSprite)
        view.addSubview(viewFreezer)
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
        // GestureRecognizer
        cenario.isUserInteractionEnabled = true
        let tapCenario = UITapGestureRecognizer(target: self, action: #selector(handleTapInPiso))
        viewSprite.addGestureRecognizer(tapCenario)
        
        lavaLouca.physicsBody = SKPhysicsBody(rectangleOf: lavaLouca.size)
        lavaLouca.physicsBody?.affectedByGravity = false
        lavaLouca.physicsBody?.allowsRotation = false
        lavaLouca.physicsBody?.isDynamic = false

        lavaLouca.setScale(1)
        lavaLouca.position = scene.convertPoint(fromView: CGPoint(x: 787, y: 250))
        
        freezer.physicsBody = SKPhysicsBody(rectangleOf: freezer.size)
        freezer.physicsBody?.affectedByGravity = false
        freezer.physicsBody?.allowsRotation = false
        freezer.physicsBody?.isDynamic = false
        
        freezer.setScale(1)
        freezer.position = scene.convertPoint(fromView: CGPoint(x: 680, y: 291))
        
        balcao.physicsBody = SKPhysicsBody(rectangleOf: balcao.size)
        balcao.physicsBody?.affectedByGravity = false
        balcao.physicsBody?.allowsRotation = false
        balcao.physicsBody?.isDynamic = false
        
        balcao.setScale(1)
        balcao.position = scene.convertPoint(fromView: CGPoint(x: 565, y: 422))
        
        armario.physicsBody = SKPhysicsBody(rectangleOf: armario.size)
        armario.physicsBody?.affectedByGravity = false
        armario.physicsBody?.allowsRotation = false
        armario.physicsBody?.isDynamic = false
        
        armario.setScale(1)
        armario.position = scene.convertPoint(fromView: CGPoint(x: 389, y: 457))
        
        filtroAgua.physicsBody = SKPhysicsBody(rectangleOf: filtroAgua.size)
        filtroAgua.physicsBody?.affectedByGravity = false
        filtroAgua.physicsBody?.allowsRotation = false
        filtroAgua.physicsBody?.isDynamic = false
        
        filtroAgua.setScale(1)
        filtroAgua.position = scene.convertPoint(fromView: CGPoint(x: 894, y: 256))
        
        sofa.physicsBody = SKPhysicsBody(rectangleOf: sofa.size)
        sofa.physicsBody?.affectedByGravity = false
        sofa.physicsBody?.allowsRotation = false
        sofa.physicsBody?.isDynamic = false
        
        sofa.setScale(1)
        sofa.position = scene.convertPoint(fromView: CGPoint(x: 1040, y: 373))
        
        centroSofa.physicsBody = SKPhysicsBody(rectangleOf: centroSofa.size)
        centroSofa.physicsBody?.affectedByGravity = false
        centroSofa.physicsBody?.allowsRotation = false
        centroSofa.physicsBody?.isDynamic = false
        
        centroSofa.setScale(1)
        centroSofa.position = scene.convertPoint(fromView: CGPoint(x: 1247, y: 496))
        
        adm.physicsBody = SKPhysicsBody(rectangleOf: adm.size)
        adm.physicsBody?.affectedByGravity = false
        adm.physicsBody?.allowsRotation = false
        adm.physicsBody?.isDynamic = false
        
        buildAdmParaCima()
        buildAdmParaBaixo()
        buildEntregadorParaCima()
        buildEntregadorParaBaixo()
        
        scene.addChild(cenario)
        scene.addChild(lavaLouca)
        scene.addChild(freezer)
        scene.addChild(balcao)
        scene.addChild(armario)
        scene.addChild(filtroAgua)
        scene.addChild(sofa)
        scene.addChild(centroSofa)
        scene.addChild(adm)
        scene.addChild(entregador)
        
    }
    
    @IBAction public func touchedButtonInicio() {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction public func touchedButtonDoar() {
        viewPontuacao.image = mudandoPontuacao[1]
        
        buttonDoar.isEnabled = false
        buttonDoar.alpha = 0.5
        
        labelMissaoUm.alpha = 0.5
        labelMissaoUm.font = sfRegular
        
        labelMissaoDois.alpha = 1
        labelMissaoDois.font = sfBoldMenor
        
        moveEntregador(location: scene.convertPoint(fromView: CGPoint(x: 560, y: 605)))
        
        viewFreezer.isUserInteractionEnabled = true
        
    }
    
    @objc func handleTapInFreezer(_ gesture: UIGestureRecognizer) {
        
        moveEntregador(location: scene.convertPoint(fromView: CGPoint(x: 713, y: 320)))
        
        viewPontuacao.image = mudandoPontuacao[2]
        
        labelMissaoDois.alpha = 0.5
        labelMissaoDois.font = sfRegular
        
        labelMissaoTres.alpha = 1
        labelMissaoTres.font = sfBoldMenor

    }
    
    @objc func handleTapInPiso(_ gesture: UIGestureRecognizer) {
//        moveAdm(location: scene.convertPoint(fromView: gesture.location(in: viewSprite)))
//        moveEntregador(location: scene.convertPoint(fromView: gesture.location(in: viewSprite)))
    }
    
    func pontuacao() {

        let comecoNome = "Pontuacao"
        let índices = [0,1,2,3,4,5]
        
        for i in índices {
            let umFramePontuacao = UIImage(named: "\(comecoNome)\(i)@2x.png")
            mudandoPontuacao.append(umFramePontuacao!)
        }
        
//        viewPontuacao.animationImages = imagensAnimação
//        viewPontuacao.animationDuration = 0.5
//        viewPontuacao.startAnimating()
        
    }
    
    func buildAdmParaCima() {
        
        let comecoNome = "ADM - Esquerda"
        let índices = [0,1,2,3]
        var imagensAnimação: [SKTexture] = []
        
        for i in índices {
            let umaPoseAdmEsquerda = SKTexture(imageNamed: "\(comecoNome)\(i)")
            imagensAnimação.append(umaPoseAdmEsquerda)
        }
        
        andandoFramesParaCima = imagensAnimação
        
        let firstFrameTexture = andandoFramesParaCima[0]
        adm = SKSpriteNode(texture: firstFrameTexture)
        adm.setScale(1.2)
        adm.position = scene.convertPoint(fromView: CGPoint(x: 600, y: 450))
        
    }
    
    func buildAdmParaBaixo() {
        //        let admDireitaAnimatedAtlas = SKTextureAtlas(named: "ADMDireita")
        //        var animacaoAdmDireita: [SKTexture] = []
        //
        //        let indices = [0,1,2,3]
        //        for i in indices {
        //            let admTextureName = "\(admDireita)\(i)"
        //            animacaoAdmDireita.append(admDireitaAnimatedAtlas.textureNamed(admTextureName))
        //        }
        
        let comecoNome = "ADM  - Direita"
        let índices = [0,1,2,3]
        var imagensAnimação: [SKTexture] = []
        
        for i in índices {
            let umaPoseAdmDireita = SKTexture(imageNamed: "\(comecoNome)\(i)")
            imagensAnimação.append(umaPoseAdmDireita)
        }
        
        //        andandoFrames = animacaoAdmDireita
        andandoFramesParaBaixo = imagensAnimação
        
        let firstFrameTexture = andandoFramesParaBaixo[0]
        adm = SKSpriteNode(texture: firstFrameTexture)
        adm.setScale(1.2)
        adm.position = scene.convertPoint(fromView: CGPoint(x: 600, y: 450))
        
    }
    
    func animateAdmParaCima() {
        adm.run(SKAction.repeatForever(SKAction.animate(with: andandoFramesParaCima, timePerFrame: 0.2, resize: false, restore: true)), withKey:"andandoParaCima")
    }
    
    func animateAdmParaBaixo() {
        
        adm.run(SKAction.repeatForever(SKAction.animate(with: andandoFramesParaBaixo, timePerFrame: 0.2, resize: false, restore: true)), withKey:"andandoParaBaixo")
        //        let animação = SKAction.animate(with: andandoFrames, timePerFrame: 3.0/20.0)
        //        let animaçãoRepetida = SKAction.repeatForever(animação)
        //        admDireita.run(animaçãoRepetida)
        
    }
    
    func moveAdm(location: CGPoint) {
        var multiplierForDirection: CGFloat = 1.0
        let admSpeed = viewSprite.frame.size.width / 22.0
        
        let moveDifference = CGPoint(x: location.x - adm.position.x, y: location.y - adm.position.y)
        let distanceToMove = sqrt(moveDifference.x * moveDifference.x + moveDifference.y * moveDifference.y)
        
        let moveDuration = distanceToMove / admSpeed
        
        if (location.y > adm.position.y) {
            
            if adm.action(forKey: "andandoParaCima") == nil {
                // Se moveDifference for maior que 0, multiplierForDirection = -1.0 senão, é igual a 1.0
                multiplierForDirection = moveDifference.x > 0 ? -1.0 : 1.0
                animateAdmParaCima()
            }
            
        } else {
            
            if adm.action(forKey: "andandoParaBaixo") == nil {
                multiplierForDirection = moveDifference.x < 0 ? -1.0 : 1.0
                animateAdmParaBaixo()
            }
        }
        
        adm.xScale = abs(adm.xScale) * multiplierForDirection
        
        let moveAction = SKAction.move(to: location, duration:(TimeInterval(moveDuration)))
        
        let doneAction = SKAction.run({ [weak self] in
            self?.admMoveEnded()
        })
        
        let moveActionWithDone = SKAction.sequence([moveAction, doneAction])
        adm.run(moveActionWithDone, withKey:"admMoving")
        
    }
    
    func admMoveEnded() {
        adm.removeAllActions()
    }
    
    func buildEntregadorParaCima() {
        
        let comecoNome = "ADM - Esquerda"
        let índices = [0,1,2,3]
        var imagensAnimação: [SKTexture] = []
        
        for i in índices {
            let umaPoseEntregadorEsquerda = SKTexture(imageNamed: "\(comecoNome)\(i)")
            imagensAnimação.append(umaPoseEntregadorEsquerda)
        }
        
        entregadorAndandoParaCima = imagensAnimação
        
        entregador.setScale(1.2)
        entregador.position = scene.convertPoint(fromView: CGPoint(x: -10, y: 950))
        
    }
    
    func buildEntregadorParaBaixo() {
        
        let comecoNome = "ADM  - Direita"
        let índices = [0,1,2,3]
        var imagensAnimação: [SKTexture] = []
        
        for i in índices {
            let umaPoseEntregadorDireita = SKTexture(imageNamed: "\(comecoNome)\(i)")
            imagensAnimação.append(umaPoseEntregadorDireita)
        }
        
        entregadorAndandoParaBaixo = imagensAnimação
        
        let firstFrameTexture = entregadorAndandoParaBaixo[0]
        entregador = SKSpriteNode(texture: firstFrameTexture)
        entregador.setScale(1.2)
        entregador.position = scene.convertPoint(fromView: CGPoint(x: -10, y: 950))
        
    }
    
    func animateEntregadorParaCima() {
         entregador.run(SKAction.repeatForever(SKAction.animate(with: entregadorAndandoParaCima, timePerFrame: 0.2, resize: false, restore: true)), withKey:"entregadorAndandoParaCima")
     }
     
     func animateEntregadorParaBaixo() {
         
         entregador.run(SKAction.repeatForever(SKAction.animate(with: entregadorAndandoParaBaixo, timePerFrame: 0.2, resize: false, restore: true)), withKey:"entregadorAndandoParaBaixo")
     }
    
    func moveEntregador(location: CGPoint) {
        var multiplierForDirection: CGFloat = 1.0
        let entregadorSpeed = viewSprite.frame.size.width / 22.0
        
        let moveDifference = CGPoint(x: location.x - entregador.position.x, y: location.y - entregador.position.y)
        let distanceToMove = sqrt(moveDifference.x * moveDifference.x + moveDifference.y * moveDifference.y)
        
        let moveDuration = distanceToMove / entregadorSpeed
        
        if (location.y > entregador.position.y) {
            
            if entregador.action(forKey: "entregadorAndandoParaCima") == nil {
                // Se moveDifference for maior que 0, multiplierForDirection = -1.0 senão, é igual a 1.0
                multiplierForDirection = moveDifference.x > 0 ? -1.0 : 1.0
                animateEntregadorParaCima()
            }
            
        } else {
            
            if adm.action(forKey: "entregadorAndandoParaBaixo") == nil {
                multiplierForDirection = moveDifference.x < 0 ? -1.0 : 1.0
                animateEntregadorParaBaixo()
            }
        }
        
        entregador.xScale = abs(entregador.xScale) * multiplierForDirection
        
        let moveAction = SKAction.move(to: location, duration:(TimeInterval(moveDuration)))
        
        let doneAction = SKAction.run({ [weak self] in
            self?.entregadorMoveEnded()
        })
        
        let moveActionWithDone = SKAction.sequence([moveAction, doneAction])
        entregador.run(moveActionWithDone, withKey:"entregadorMoving")
        
    }
    
    func entregadorMoveEnded() {
        entregador.removeAllActions()
    }
    
}

