//
//  respiracaoController.swift
//  MentalCampfire
//
//  Created by Patricia Sampaio on 06/05/20.
//  Copyright © 2020 Rodrigo Silva Ribeiro. All rights reserved.
//

import UIKit

class respiracaoController: UIViewController {
    
    @IBOutlet weak var animationsButton: UIButton!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var containerView: UIView!
    
    
    var breatheView: BreatheView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Respiração"
        breatheView = BreatheView(frame: containerView.frame)
        
        containerView.addSubview(breatheView)
        breatheView.translatesAutoresizingMaskIntoConstraints = true
        breatheView.center = CGPoint(x: containerView.bounds.midX, y: containerView.bounds.midY)
        breatheView.autoresizingMask = [.flexibleLeftMargin, .flexibleRightMargin, .flexibleTopMargin, .flexibleBottomMargin]
        
        animationsButton.titleLabel?.text = ButtonTitle.começar.rawValue.uppercased()
        animationsButton.backgroundColor = #colorLiteral(red: 0.6, green: 0.8823529412, blue: 0.8980392157, alpha: 1)
        animationsButton.layer.cornerRadius = animationsButton.bounds.height/5
        
    }
    
    
    @IBAction func nodesSliderDidChangeValue(_ sender: UISlider) {
        breatheView.nodesCount = Int(floor(sender.value))
        setStateActive(false)
    }
    
    @IBAction func animationsButtonDidTouchUpInside(_ sender: UIButton) {
        setStateActive(!breatheView.isAnimating)
    }
    
    private enum ButtonTitle: String { case começar, parar }
    
    private func setStateActive(_ isActive: Bool) {
        slider.isHidden = isActive
        if isActive {
            breatheView.startAnimations()
            animationsButton.setTitle(ButtonTitle.parar.rawValue.uppercased(), for: .normal)
            animationsButton.backgroundColor = #colorLiteral(red: 0.9843137255, green: 0.6862745098, blue: 0.6862745098, alpha: 1)
            //animationsButton.dropShadow(.red, opacity: 0.65, radius: 8.0)
        } else {
            breatheView.stopAnimations()
            animationsButton.setTitle(ButtonTitle.começar.rawValue.uppercased(), for: .normal)
            animationsButton.backgroundColor = #colorLiteral(red: 0.6, green: 0.8823529412, blue: 0.8980392157, alpha: 1)
            animationsButton.layer.shadowColor = UIColor.clear.cgColor
        }
    }
}

private extension UIView {
    func dropShadow(_ color: UIColor = .black, offset: CGSize = .zero, opacity: Float, radius: CGFloat) {
        layer.shadowRadius = radius
        layer.shadowColor = color.cgColor
        layer.shadowOffset = offset
        layer.shadowOpacity = opacity
        layer.shouldRasterize = true
        layer.rasterizationScale = UIScreen.main.scale
        clipsToBounds = false
    }
}
