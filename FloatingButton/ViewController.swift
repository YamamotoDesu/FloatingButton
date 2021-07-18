//
//  ViewController.swift
//  FloatingButton
//
//  Created by 山本響 on 2021/07/18.
//

import UIKit

class ViewController: UIViewController {
    
    private let floatingButton: UIButton = {
       let button = UIButton(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
        button.backgroundColor = .systemPink
        let image = UIImage(systemName: "plus",
                            withConfiguration: UIImage.SymbolConfiguration(pointSize: 30, weight: .medium))
        button.setImage(image, for: .normal)
        button.tintColor = .white
        button.setTitleShadowColor(.white ,for: .normal)
        button.layer.shadowRadius = 10
        button.layer.shadowOpacity = 0.3
        
        //Coner Radius
        //button.layer.masksToBounds = true
        button.layer.cornerRadius = 30
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(floatingButton)
        floatingButton.addTarget(self, action: #selector(didTapButtton), for: .touchUpInside)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        floatingButton.frame = CGRect(
            x: view.frame.size.width - 70,
            y: view.frame.size.height - 100,
            width: 60,
            height: 60
        )
    }
    
    @objc private func didTapButtton() {
        let alert = UIAlertController(
            title: "Add Something",
            message: "Floating Button Tapped",
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(title: "Dismiss",
                                      style: .cancel,
                                      handler: nil))
        present(alert, animated: true)
    }


}

